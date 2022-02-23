package utilities;

public class ExampleCreate {

    public static void main(String[] args) {
        String s = "user1\tuser11\tuser21\tuser31\tuser41\tuser151\tuser161\tuser171\tuser181\tuser191\n" +
                "user2\tuser12\tuser22\tuser32\tuser42\tuser152\tuser162\tuser172\tuser182\tuser192\n" +
                "user3\tuser13\tuser23\tuser33\tuser43\tuser153\tuser163\tuser173\tuser183\tuser193\n" +
                "user4\tuser14\tuser24\tuser34\tuser44\tuser154\tuser164\tuser174\tuser184\tuser194\n" +
                "user5\tuser15\tuser25\tuser35\tuser45\tuser155\tuser165\tuser175\tuser185\tuser195\n" +
                "user6\tuser16\tuser26\tuser36\tuser46\tuser156\tuser166\tuser176\tuser186\tuser196\n" +
                "user7\tuser17\tuser27\tuser37\tuser47\tuser157\tuser167\tuser177\tuser187\tuser197\n" +
                "user8\tuser18\tuser28\tuser38\tuser48\tuser158\tuser168\tuser178\tuser188\tuser198\n" +
                "user9\tuser19\tuser29\tuser39\tuser49\tuser159\tuser169\tuser179\tuser189\tuser199\n" +
                "user10\tuser20\tuser30\tuser40\tuser50\tuser160\tuser170\tuser180\tuser190\tuser200\n";
        s= s.replace("\n","|\n|" );
        s = s.replace("\t","|\n|");

        System.out.println(s);
    }
}
