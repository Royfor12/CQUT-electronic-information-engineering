package com.frozen.sakura;

import java.io.*;
import java.util.ArrayList;

public class FileHelper {

    private static class SheetMusic {
        public String note;
        public int count;
        // 模仿古筝摇指
        public boolean tremolo = false;

        public SheetMusic (String note, int count) {
            super();
            this.note = note;
            this.count = count;
        }

        public SheetMusic (String note, int count, boolean tremolo) {
            super();
            this.note = note;
            this.count = count;
            this.tremolo = tremolo;
        }
    }

    // 计数器
    private int woc = 0;
    // 调性转换
    private final int offset = 0;
    // 以几分音符为一个音符单位
    private final int unit = 16;
    // 储存乐谱结果
    private ArrayList<SheetMusic> sheetMusics = new ArrayList<>();

    public void createFile() {
        String pathname = "src/com/frozen/sakura/input";
        StringBuilder data = new StringBuilder();
        try (FileReader reader = new FileReader(pathname);
             BufferedReader br = new BufferedReader(reader)
        ) {
            String line;
            while ((line = br.readLine()) != null) {
                if (line.length() == 0)
                    continue;
                transformData(line.replace(" ", ""));
            }
            solveOverlapNote();
            int width = 0;
            for (SheetMusic item :
                    sheetMusics) {
                for (int i = 0; i < item.count; i++, woc++) {
                    if (!item.tremolo)
                        data.append("    ")
                                .append(woc)
                                .append(": ")
                                .append(item.note)
                                .append(";\n");
                    else {
                        data.append("    ")
                                .append(woc)
                                .append(": ");
                        // 模仿摇指
                        if ((i & 1) == 0)
                            data.append(item.note);
                        else
                            data.append("0");
                        data.append(";\n");
                    }
                    if (Integer.parseInt(item.note) > width)
                        width = Integer.parseInt(item.note);
                }
            }
            String stringBuilder = "WIDTH = " +
                    // 计算宽度
                    (int) (Math.log(getNextPow2(width)) / Math.log(2)) +
                    ";\nDEPTH = " +
                    // 计算深度
                    getNextPow2(woc) +
                    ";\n\nADDRESS_RADIX = DEC;\nDATA_RADIX = DEC;\n\nCONTENT BEGIN\n" +
                    data.toString() +
                    "END;";
            writeFile(stringBuilder);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    // 写入文件
    private void writeFile(String content) {
        try {
            File writeName = new File("src/com/frozen/sakura/output");
            try (FileWriter writer = new FileWriter(writeName);
                 BufferedWriter out = new BufferedWriter(writer)
            ) {
                out.write(content);
                out.flush();
                System.out.println("Successful.");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void transformData(String data) {
        SheetMusic sheetMusic;
        String temp = data.replace("/", "");
        // 音符格式错误
        if (temp.contains(".") && temp.contains("-")) {
            sheetMusic = new SheetMusic("error", 1);
        } else {
            int count;
            // 计算单位个数
            if (temp.contains(".."))
                // 十六分音符
                count = unit / 16;
            else if (temp.contains("."))
                if (temp.length() - temp.replace(".", "").length() == 2)
                    // 八分音符附点
                    count = 3 * unit / 16;
                else if (temp.charAt(0) == '.')
                    // 八分音符
                    count = unit / 8;
                else
                    // 四分音符附点
                    count = 3 * unit / 8;
            else
                count = unit / 4 * (temp.length() - temp.replace("-", "").length() + 1);
            // 将音符添加至乐谱中
            sheetMusic = new SheetMusic(number(temp.replace(".", "").replace("-", "")), count, data.contains("/"));
        }
        sheetMusics.add(sheetMusic);
    }

    // 生成对应音高
    private String number(String index) {
        switch (index.length()) {
            case 1:
                if (index.equals("0"))
                    return index;
                // 中音
                return String.valueOf(Integer.parseInt(index) + 7 + offset);
            case 2:
                int note = Integer.parseInt(String.valueOf(index.charAt(1)));
                switch (index.charAt(0)) {
                    case '0':
                        // 低音
                        return String.valueOf(note + offset);
                    case '1':
                        // 高音
                        return String.valueOf(note + 14 + offset);
                    case '2':
                        return String.valueOf(note + 21 + offset);
                }
            default:
                return index;
        }
    }

    // 处理相近音符
    private void solveOverlapNote() {
        for (int i = 1; i < sheetMusics.size(); i++) {
            SheetMusic temp = sheetMusics.get(i - 1);
            if (sheetMusics.get(i).note.equals(temp.note) && temp.count > 1) {
                temp.count -= 1;
                sheetMusics.add(i, new SheetMusic("0", 1));
                i++;
            }
        }
    }

    // 计算最接近的二次幂
    private long getNextPow2(int v) {
        long x = v - 1;
        x |= x >>> 1;
        x |= x >>> 2;
        x |= x >>> 4;
        x |= x >>> 8;
        x |= x >>> 16;
        return x + 1;
    }
}
