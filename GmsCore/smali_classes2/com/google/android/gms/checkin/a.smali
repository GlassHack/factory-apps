.class public final Lcom/google/android/gms/checkin/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/io/File;

.field private static d:Ljava/util/regex/Pattern;

.field private static e:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 122
    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/a;->i()I

    move-result v0

    sput v0, Lcom/google/android/gms/checkin/a;->a:I

    .line 126
    const-string v0, "^([0-9a-fA-F][0-9a-fA-F][:-]?){5}[0-9a-fA-F][0-9a-fA-F]$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/checkin/a;->b:Ljava/util/regex/Pattern;

    .line 185
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/checkin/a;->c:Ljava/io/File;

    .line 250
    const-string v0, "^(([0-9]{15})|([0-9a-fA-F]{14}))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/checkin/a;->d:Ljava/util/regex/Pattern;

    .line 253
    const-string v0, "^([0-9a-fA-F]{8})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/checkin/a;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method private static a(Landroid/telephony/TelephonyManager;)I
    .locals 3

    .prologue
    .line 261
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getCurrentPhoneType"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 262
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 264
    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method static a(ZLandroid/os/DropBoxManager;IILjava/util/Map;JLcom/google/android/gms/checkin/b/b;)J
    .locals 21

    .prologue
    .line 1020
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1021
    const/4 v5, 0x0

    .line 1026
    :try_start_0
    move-object/from16 v0, p7

    iget-object v14, v0, Lcom/google/android/gms/checkin/b/b;->k:Lcom/google/android/gms/checkin/b/j;

    .line 1027
    move-wide/from16 v0, p5

    invoke-virtual {v14, v0, v1}, Lcom/google/android/gms/checkin/b/j;->a(J)Lcom/google/android/gms/checkin/b/j;

    .line 1030
    const-string v4, "checkin_dropbox_upload"

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1031
    if-eqz v4, :cond_7

    sget-object v8, Lcom/google/android/gsf/e;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    move v13, v4

    .line 1036
    :goto_0
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 1037
    :try_start_1
    const-string v4, "event_log"

    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 1038
    :try_start_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    const/4 v11, 0x0

    .line 1040
    const-wide/16 v8, -0x1

    .line 1042
    const/16 v4, 0x1000

    new-array v0, v4, [B

    move-object/from16 v16, v0

    .line 1043
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1044
    const/4 v4, 0x0

    move v12, v4

    move-object v10, v7

    move-object/from16 v20, v5

    move-object v5, v6

    move-wide v6, v8

    move-object/from16 v8, v20

    .line 1046
    :goto_1
    move/from16 v0, p2

    if-ge v12, v0, :cond_1f

    if-nez v5, :cond_0

    if-eqz v10, :cond_1f

    :cond_0
    move-object v9, v5

    .line 1049
    :goto_2
    if-eqz v9, :cond_c

    :try_start_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    cmp-long v4, v6, p5

    if-gtz v4, :cond_c

    .line 1050
    :cond_1
    if-nez v11, :cond_2

    .line 1051
    invoke-virtual {v9}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 1052
    if-eqz v5, :cond_2

    .line 1053
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x1000

    invoke-direct {v4, v11, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v11, v4

    .line 1057
    :cond_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 1064
    if-eqz v11, :cond_3

    invoke-static {v11, v15}, Lcom/google/android/d/a;->a(Ljava/io/BufferedReader;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_3
    const/4 v5, 0x1

    .line 1065
    :goto_3
    const/4 v4, 0x0

    .line 1066
    if-nez v5, :cond_4

    .line 1067
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_9

    .line 1068
    const/4 v4, 0x3

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1069
    move/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/gms/checkin/a;->a(ZLjava/lang/String;)Z

    move-result v4

    .line 1075
    :cond_4
    :goto_4
    if-nez v5, :cond_5

    if-eqz v4, :cond_a

    .line 1076
    :cond_5
    invoke-virtual {v9}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v4

    .line 1077
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 1078
    :cond_6
    const/4 v11, 0x0

    .line 1079
    invoke-virtual {v9}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 1080
    const-string v18, "event_log"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v9

    goto :goto_2

    .line 1031
    :cond_7
    const/4 v4, 0x0

    move v13, v4

    goto/16 :goto_0

    .line 1064
    :cond_8
    const/4 v5, 0x0

    goto :goto_3

    .line 1071
    :cond_9
    const-string v5, "CheckinRequestBuilder"

    const-string v18, "event_log tagname does not exist"

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    const/4 v5, 0x1

    goto :goto_4

    .line 1081
    :cond_a
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-nez v4, :cond_25

    .line 1083
    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1084
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1085
    const/4 v6, -0x1

    if-ne v5, v6, :cond_b

    :goto_5
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto/16 :goto_2

    :cond_b
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    goto :goto_5

    .line 1086
    :catch_0
    move-exception v4

    move-object v5, v4

    .line 1087
    :try_start_5
    const-string v6, "CheckinRequestBuilder"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t parse event_log timestamp: "

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1088
    const-wide/16 v4, -0x1

    :goto_6
    move-wide v6, v4

    .line 1091
    goto/16 :goto_2

    .line 1093
    :cond_c
    :goto_7
    if-eqz v10, :cond_10

    .line 1095
    invoke-virtual {v10}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 1096
    const-string v5, "event_log"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v10}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_f

    .line 1098
    :cond_d
    move/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/gms/checkin/a;->a(ZLjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 1099
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v18, "checkin_dropbox_upload:"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1100
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1101
    if-eqz v4, :cond_e

    sget-object v5, Lcom/google/android/gsf/e;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_10

    .line 1103
    :cond_e
    if-eqz v13, :cond_f

    if-eqz v4, :cond_10

    sget-object v5, Lcom/google/android/gsf/e;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1107
    :cond_f
    invoke-virtual {v10}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v4

    .line 1114
    invoke-virtual {v10}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 1115
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v10

    goto :goto_7

    .line 1119
    :cond_10
    if-eqz v9, :cond_17

    if-eqz v10, :cond_11

    invoke-virtual {v10}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-gez v4, :cond_17

    .line 1123
    :cond_11
    new-instance v5, Lcom/google/android/gms/checkin/b/k;

    invoke-direct {v5}, Lcom/google/android/gms/checkin/b/k;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1124
    :try_start_6
    invoke-virtual {v14, v5}, Lcom/google/android/gms/checkin/b/j;->a(Lcom/google/android/gms/checkin/b/k;)Lcom/google/android/gms/checkin/b/j;

    .line 1125
    const/4 v4, 0x3

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/checkin/b/k;->a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/k;

    .line 1126
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/checkin/b/k;->a(J)Lcom/google/android/gms/checkin/b/k;

    .line 1130
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v8, 0x5

    if-ne v4, v8, :cond_13

    .line 1132
    const/4 v4, 0x4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/checkin/b/k;->b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/k;

    .line 1144
    :cond_12
    :goto_8
    invoke-virtual {v5}, Lcom/google/android/gms/checkin/b/k;->b()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v12

    .line 1145
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    move v12, v4

    move-object v8, v5

    move-object v5, v9

    goto/16 :goto_1

    .line 1133
    :cond_13
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v8, 0x5

    if-le v4, v8, :cond_12

    .line 1135
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1136
    const/4 v4, 0x4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/google/android/d/a;->a(Ljava/lang/String;Ljava/lang/Appendable;)V

    .line 1137
    const/4 v4, 0x5

    move v8, v4

    :goto_9
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v8, v4, :cond_14

    .line 1138
    const-string v4, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/google/android/d/a;->a(Ljava/lang/String;Ljava/lang/Appendable;)V

    .line 1137
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_9

    .line 1141
    :cond_14
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/gms/checkin/b/k;->b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/k;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    .line 1190
    :catch_1
    move-exception v4

    move-object v6, v9

    move-object v7, v10

    .line 1191
    :goto_a
    :try_start_7
    const-string v8, "CheckinRequestBuilder"

    const-string v9, "Can\'t copy dropbox data"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1193
    if-eqz v7, :cond_15

    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 1194
    :cond_15
    if-eqz v6, :cond_23

    invoke-virtual {v6}, Landroid/os/DropBoxManager$Entry;->close()V

    move-object v8, v5

    .line 1197
    :cond_16
    :goto_b
    if-nez v8, :cond_22

    :goto_c
    return-wide p5

    .line 1146
    :cond_17
    if-eqz v10, :cond_24

    if-eqz v9, :cond_18

    :try_start_8
    invoke-virtual {v10}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-gtz v4, :cond_24

    .line 1150
    :cond_18
    new-instance v5, Lcom/google/android/gms/checkin/b/k;

    invoke-direct {v5}, Lcom/google/android/gms/checkin/b/k;-><init>()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1151
    :try_start_9
    invoke-virtual {v14, v5}, Lcom/google/android/gms/checkin/b/j;->a(Lcom/google/android/gms/checkin/b/k;)Lcom/google/android/gms/checkin/b/j;

    .line 1152
    invoke-virtual {v10}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/gms/checkin/b/k;->a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/k;

    .line 1153
    invoke-virtual {v10}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/checkin/b/k;->a(J)Lcom/google/android/gms/checkin/b/k;

    .line 1156
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1157
    invoke-virtual {v10}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1158
    :cond_19
    if-eqz v4, :cond_1a

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_1a

    .line 1159
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v18

    sub-int v18, p3, v18

    move/from16 v0, v18

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 1160
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1161
    move/from16 v0, v18

    if-ge v0, v8, :cond_19

    .line 1162
    const-string v8, "CheckinRequestBuilder"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Truncating "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " entry to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bytes for upload"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    invoke-virtual {v10}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_1a

    .line 1165
    const-string v8, "\n=== TRUNCATED FOR UPLOAD ===\n"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1170
    :cond_1a
    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1172
    :cond_1b
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v4

    .line 1175
    :try_start_a
    array-length v8, v4

    if-lez v8, :cond_1c

    new-instance v8, Ljava/lang/String;

    const-string v18, "ISO-8859-1"

    move-object/from16 v0, v18

    invoke-direct {v8, v4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/google/android/gms/checkin/b/k;->b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/k;
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1180
    :cond_1c
    :try_start_b
    invoke-virtual {v5}, Lcom/google/android/gms/checkin/b/k;->b()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v12

    .line 1181
    invoke-virtual {v10}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v18

    .line 1182
    invoke-virtual {v10}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 1183
    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v10

    move v12, v4

    move-object v8, v5

    move-object v5, v9

    .line 1184
    goto/16 :goto_1

    .line 1177
    :catch_2
    move-exception v4

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "ISO-8859-1 not supported?"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1193
    :catchall_0
    move-exception v4

    :goto_d
    if-eqz v10, :cond_1d

    invoke-virtual {v10}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 1194
    :cond_1d
    if-eqz v9, :cond_1e

    invoke-virtual {v9}, Landroid/os/DropBoxManager$Entry;->close()V

    :cond_1e
    throw v4

    .line 1187
    :cond_1f
    if-eqz v11, :cond_20

    .line 1188
    :try_start_c
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1193
    :cond_20
    if-eqz v10, :cond_21

    invoke-virtual {v10}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 1194
    :cond_21
    if-eqz v5, :cond_16

    invoke-virtual {v5}, Landroid/os/DropBoxManager$Entry;->close()V

    goto/16 :goto_b

    .line 1197
    :cond_22
    iget-wide v0, v8, Lcom/google/android/gms/checkin/b/k;->a:J

    move-wide/from16 p5, v0

    goto/16 :goto_c

    .line 1193
    :catchall_1
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    goto :goto_d

    :catchall_2
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    goto :goto_d

    :catchall_3
    move-exception v4

    move-object v9, v6

    move-object v10, v7

    goto :goto_d

    :catchall_4
    move-exception v4

    move-object v9, v5

    goto :goto_d

    .line 1190
    :catch_3
    move-exception v4

    goto/16 :goto_a

    :catch_4
    move-exception v4

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    goto/16 :goto_a

    :catch_5
    move-exception v4

    move-object v6, v5

    move-object v7, v10

    move-object v5, v8

    goto/16 :goto_a

    :cond_23
    move-object v8, v5

    goto/16 :goto_b

    :cond_24
    move-object v5, v9

    goto/16 :goto_1

    :cond_25
    move-wide v4, v6

    goto/16 :goto_6
.end method

.method public static a(I)Lcom/google/android/gms/checkin/b/b;
    .locals 3

    .prologue
    .line 138
    new-instance v0, Lcom/google/android/gms/checkin/b/b;

    invoke-direct {v0}, Lcom/google/android/gms/checkin/b/b;-><init>()V

    .line 139
    new-instance v1, Lcom/google/android/gms/checkin/b/j;

    invoke-direct {v1}, Lcom/google/android/gms/checkin/b/j;-><init>()V

    .line 140
    new-instance v2, Lcom/google/android/gms/checkin/b/i;

    invoke-direct {v2}, Lcom/google/android/gms/checkin/b/i;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/checkin/b/j;->a(Lcom/google/android/gms/checkin/b/i;)Lcom/google/android/gms/checkin/b/j;

    .line 141
    invoke-virtual {v0, v1}, Lcom/google/android/gms/checkin/b/b;->a(Lcom/google/android/gms/checkin/b/j;)Lcom/google/android/gms/checkin/b/b;

    .line 142
    invoke-virtual {v0, p0}, Lcom/google/android/gms/checkin/b/b;->b(I)Lcom/google/android/gms/checkin/b/b;

    .line 143
    return-object v0
.end method

.method private static a()Ljava/util/Set;
    .locals 14

    .prologue
    .line 654
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 657
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 658
    if-nez v0, :cond_0

    .line 659
    const-string v0, "CheckinRequestBuilder"

    const-string v1, "Couldn\'t get EGL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :goto_0
    return-object v5

    .line 664
    :cond_0
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 665
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 666
    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 669
    const/4 v2, 0x1

    new-array v9, v2, [I

    .line 670
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 671
    const-string v0, "CheckinRequestBuilder"

    const-string v1, "Couldn\'t get EGL config count"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 676
    :cond_1
    const/4 v2, 0x0

    aget v2, v9, v2

    new-array v10, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 677
    const/4 v2, 0x0

    aget v2, v9, v2

    invoke-interface {v0, v1, v10, v2, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 678
    const-string v0, "CheckinRequestBuilder"

    const-string v1, "Couldn\'t get EGL configs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 685
    :cond_2
    const/4 v2, 0x5

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    .line 692
    const/4 v2, 0x3

    new-array v11, v2, [I

    fill-array-data v11, :array_1

    .line 696
    const/4 v2, 0x1

    new-array v12, v2, [I

    .line 698
    const/4 v6, 0x0

    .line 699
    const/4 v4, 0x0

    .line 700
    const/4 v2, 0x0

    move v7, v4

    move v13, v2

    move v2, v6

    move v6, v13

    :goto_1
    const/4 v4, 0x0

    aget v4, v9, v4

    if-ge v6, v4, :cond_5

    .line 702
    aget-object v4, v10, v6

    const/16 v8, 0x3027

    invoke-interface {v0, v1, v4, v8, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 703
    const/4 v4, 0x0

    aget v4, v12, v4

    const/16 v8, 0x3050

    if-eq v4, v8, :cond_7

    .line 704
    aget-object v4, v10, v6

    const/16 v8, 0x3033

    invoke-interface {v0, v1, v4, v8, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 711
    const/4 v4, 0x0

    aget v4, v12, v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    .line 712
    aget-object v4, v10, v6

    const/16 v8, 0x3040

    invoke-interface {v0, v1, v4, v8, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 718
    if-nez v2, :cond_6

    const/4 v4, 0x0

    aget v4, v12, v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    .line 719
    aget-object v2, v10, v6

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/checkin/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    .line 720
    const/4 v2, 0x1

    move v8, v2

    .line 722
    :goto_2
    if-nez v7, :cond_3

    const/4 v2, 0x0

    aget v2, v12, v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 723
    aget-object v2, v10, v6

    move-object v4, v11

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/checkin/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    .line 724
    const/4 v7, 0x1

    .line 726
    :cond_3
    if-eqz v8, :cond_4

    if-nez v7, :cond_5

    :cond_4
    move v4, v7

    move v7, v8

    .line 727
    :goto_3
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v7

    move v7, v4

    goto :goto_1

    .line 732
    :cond_5
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    goto/16 :goto_0

    :cond_6
    move v8, v2

    goto :goto_2

    :cond_7
    move v4, v7

    move v7, v2

    goto :goto_3

    .line 685
    nop

    :array_0
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data

    .line 692
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public static a(Landroid/content/Context;JLcom/google/android/gms/checkin/b/b;)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 382
    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v1

    .line 384
    invoke-static {p0}, Lcom/google/android/gms/g/a;->a(Landroid/content/Context;)J

    move-result-wide v2

    .line 385
    invoke-virtual {p3, v2, v3}, Lcom/google/android/gms/checkin/b/b;->a(J)Lcom/google/android/gms/checkin/b/b;

    .line 387
    cmp-long v4, p1, v6

    if-eqz v4, :cond_0

    .line 388
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/checkin/b/b;->c(J)Lcom/google/android/gms/checkin/b/b;

    .line 394
    :cond_0
    cmp-long v4, p1, v6

    if-nez v4, :cond_1

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 395
    :cond_1
    sget v2, Lcom/google/android/gms/checkin/a;->a:I

    invoke-virtual {p3, v2}, Lcom/google/android/gms/checkin/b/b;->a(I)Lcom/google/android/gms/checkin/b/b;

    .line 398
    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/g/a;->b(Landroid/content/Context;)J

    move-result-wide v2

    .line 399
    invoke-virtual {p3, v2, v3}, Lcom/google/android/gms/checkin/b/b;->b(J)Lcom/google/android/gms/checkin/b/b;

    .line 403
    const-string v2, "digest"

    invoke-static {v0, v2}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-virtual {p3, v0}, Lcom/google/android/gms/checkin/b/b;->f(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    .line 406
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    const-string v2, "unknown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 408
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/checkin/b/b;->d(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    .line 411
    :cond_4
    iget-object v0, p3, Lcom/google/android/gms/checkin/b/b;->k:Lcom/google/android/gms/checkin/b/j;

    .line 412
    invoke-virtual {v1}, Lcom/google/android/gms/c/a;->b()I

    move-result v2

    .line 413
    invoke-virtual {v0, v2}, Lcom/google/android/gms/checkin/b/j;->a(I)Lcom/google/android/gms/checkin/b/j;

    .line 415
    invoke-virtual {v1, p0}, Lcom/google/android/gms/c/a;->d(Landroid/content/Context;)I

    move-result v0

    .line 417
    if-ltz v0, :cond_5

    .line 418
    invoke-virtual {p3, v0}, Lcom/google/android/gms/checkin/b/b;->c(I)Lcom/google/android/gms/checkin/b/b;

    .line 420
    :cond_5
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/checkin/b/b;)V
    .locals 5

    .prologue
    .line 233
    iget-object v0, p1, Lcom/google/android/gms/checkin/b/b;->k:Lcom/google/android/gms/checkin/b/j;

    iget-object v0, v0, Lcom/google/android/gms/checkin/b/j;->a:Lcom/google/android/gms/checkin/b/i;

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "client_id"

    invoke-static {v1, v2}, Lcom/google/android/gsf/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/checkin/b/i;->f(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;

    .line 239
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 241
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/checkin/b/i;->a(I)Lcom/google/android/gms/checkin/b/i;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string v2, "CheckinRequestBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Our own package not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 4

    .prologue
    .line 470
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 471
    const-string v0, "com.google"

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    .line 472
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 473
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 474
    const-string v3, "com.google"

    invoke-virtual {v1, v3, v0}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;Lcom/google/android/gms/checkin/b/b;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p1, Lcom/google/android/gms/checkin/b/b;->k:Lcom/google/android/gms/checkin/b/j;

    iget-object v2, v0, Lcom/google/android/gms/checkin/b/j;->a:Lcom/google/android/gms/checkin/b/i;

    .line 150
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/checkin/b/i;->a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;

    .line 151
    :cond_0
    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 153
    :cond_1
    const-string v3, "CheckinTask_lastRadio"

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    if-nez v0, :cond_b

    move-object v0, v1

    .line 162
    :cond_2
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2, v0}, Lcom/google/android/gms/checkin/b/i;->b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;

    .line 163
    :cond_3
    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/checkin/b/i;->c(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;

    .line 164
    :cond_4
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/checkin/b/i;->d(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;

    .line 165
    :cond_5
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/checkin/b/i;->e(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;

    .line 166
    :cond_6
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/checkin/b/i;->g(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;

    .line 167
    :cond_7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/checkin/b/i;->h(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;

    .line 168
    :cond_8
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/checkin/b/i;->i(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;

    .line 169
    :cond_9
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/checkin/b/i;->j(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;

    .line 170
    :cond_a
    sget-wide v0, Landroid/os/Build;->TIME:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/checkin/b/i;->a(J)Lcom/google/android/gms/checkin/b/i;

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v0}, Lcom/google/android/gms/checkin/b/i;->b(I)Lcom/google/android/gms/checkin/b/i;

    .line 179
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/recovery-from-boot.p"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/checkin/b/i;->a(Z)Lcom/google/android/gms/checkin/b/i;

    .line 181
    invoke-static {p1}, Lcom/google/android/gms/checkin/a;->b(Lcom/google/android/gms/checkin/b/b;)V

    .line 182
    return-void

    .line 157
    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 158
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "CheckinTask_lastRadio"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public static a(Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Lcom/google/android/gms/checkin/b/b;)V
    .locals 6

    .prologue
    .line 273
    iget-object v1, p3, Lcom/google/android/gms/checkin/b/b;->k:Lcom/google/android/gms/checkin/b/j;

    .line 275
    if-eqz p0, :cond_2

    .line 276
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {p0}, Lcom/google/android/gms/checkin/a;->a(Landroid/telephony/TelephonyManager;)I

    move-result v2

    .line 279
    packed-switch v2, :pswitch_data_0

    .line 312
    const-string v3, "CheckinRequestBuilder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown phone type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/checkin/b/j;->b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/j;

    .line 318
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/google/android/gms/checkin/b/j;->c(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/j;

    .line 324
    :cond_2
    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_3

    .line 326
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_3

    sget-object v2, Lcom/google/android/gms/checkin/a;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 328
    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {p3, v0}, Lcom/google/android/gms/checkin/b/b;->b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    .line 330
    const-string v0, "ethernet"

    invoke-virtual {p3, v0}, Lcom/google/android/gms/checkin/b/b;->c(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    .line 334
    :cond_3
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_4

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "r"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/checkin/b/j;->d(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/j;

    .line 340
    :cond_4
    if-eqz p1, :cond_5

    .line 344
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_5

    .line 346
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_5

    .line 348
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-virtual {p3, v0}, Lcom/google/android/gms/checkin/b/b;->b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    .line 350
    const-string v0, "wifi"

    invoke-virtual {p3, v0}, Lcom/google/android/gms/checkin/b/b;->c(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    .line 354
    :cond_5
    return-void

    .line 281
    :pswitch_1
    if-eqz v0, :cond_7

    sget-object v2, Lcom/google/android/gms/checkin/a;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 285
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "80"

    if-ne v2, v3, :cond_6

    .line 286
    const-string v0, "CheckinRequestBuilder"

    const-string v2, "TelephonyManager.getDeviceId() is returning a pseudo-ESN instead of an MEID"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 289
    :cond_6
    invoke-virtual {p3, v0}, Lcom/google/android/gms/checkin/b/b;->e(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    goto/16 :goto_0

    .line 297
    :cond_7
    :pswitch_2
    if-eqz v0, :cond_0

    .line 298
    sget-object v2, Lcom/google/android/gms/checkin/a;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 299
    invoke-virtual {p3, v0}, Lcom/google/android/gms/checkin/b/b;->a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    goto/16 :goto_0

    .line 301
    :cond_8
    const-string v0, "CheckinRequestBuilder"

    const-string v2, "TelephonyManager.getDeviceId() must return a 15-decimal-digit IMEI, a 14-hex-digit MEID or an 8-hex-digit ESN "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 336
    :cond_9
    const-string v0, ""

    goto :goto_1

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/google/android/gms/checkin/b/b;)V
    .locals 2

    .prologue
    .line 826
    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/b;->k:Lcom/google/android/gms/checkin/b/j;

    const-string v1, "te.bots"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/checkin/b/j;->a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/j;

    .line 829
    :cond_0
    return-void
.end method

.method public static a(Ljava/util/Locale;Lcom/google/android/gms/checkin/b/b;)V
    .locals 1

    .prologue
    .line 361
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/checkin/b/b;->g(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    .line 362
    return-void

    .line 361
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/TimeZone;Lcom/google/android/gms/checkin/b/b;)V
    .locals 1

    .prologue
    .line 369
    if-eqz p0, :cond_0

    .line 370
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/checkin/b/b;->i(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    .line 372
    :cond_0
    return-void
.end method

.method private static a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V
    .locals 6

    .prologue
    .line 619
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, p2, v0, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 622
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v0, :cond_0

    .line 651
    :goto_0
    return-void

    .line 627
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    .line 628
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v0, :cond_1

    .line 629
    invoke-interface {p0, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_0

    .line 634
    :cond_1
    invoke-interface {p0, p1, v2, v2, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 637
    const/16 v0, 0x1f03

    invoke-static {v0}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 638
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 641
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 642
    invoke-interface {p5, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 647
    :cond_2
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, v0, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 649
    invoke-interface {p0, p1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 650
    invoke-interface {p0, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_0
.end method

.method private static a(ZLjava/lang/String;)Z
    .locals 1

    .prologue
    .line 1207
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "exp_det_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 918
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 921
    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 927
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 928
    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 931
    :try_start_1
    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 936
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 937
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    :goto_0
    return-object v0

    .line 923
    :catch_0
    move-exception v1

    .line 924
    const-string v2, "CheckinRequestBuilder"

    const-string v3, "package info for managing app not found:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 932
    :catch_1
    move-exception v1

    .line 933
    const-string v2, "CheckinRequestBuilder"

    const-string v3, "no support for SHA-1?"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/google/android/gms/checkin/b/b;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 484
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 485
    const-string v2, "com.google"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 486
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 489
    :try_start_0
    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v6, "AndroidCheckInServer"

    const/4 v7, 0x0

    invoke-static {p0, v0, v6, v7}, Lcom/google/android/gms/auth/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/auth/ag; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 505
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/gms/checkin/b/b;->h(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    .line 506
    if-eqz v0, :cond_0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 507
    invoke-virtual {p1, v0}, Lcom/google/android/gms/checkin/b/b;->h(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    .line 486
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    const-string v0, "CheckinRequestBuilder"

    const-string v6, "awaiting user notification for token"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 501
    goto :goto_1

    .line 495
    :catch_1
    move-exception v0

    .line 497
    const-string v6, "CheckinRequestBuilder"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unrecoverable authentication exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/q;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 501
    goto :goto_1

    .line 499
    :catch_2
    move-exception v0

    .line 500
    const-string v6, "CheckinRequestBuilder"

    const-string v7, "error reading account token"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1

    .line 513
    :cond_1
    array-length v0, v3

    if-nez v0, :cond_2

    .line 514
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/google/android/gms/checkin/b/b;->h(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    .line 516
    :cond_2
    return-void
.end method

.method private static b(Lcom/google/android/gms/checkin/b/b;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 189
    const/4 v3, 0x0

    .line 193
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    sget-object v0, Lcom/google/android/gms/checkin/a;->c:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 195
    const/16 v0, 0x800

    new-array v4, v0, [B

    .line 196
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 198
    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 199
    const-string v5, "SHA-1"

    invoke-static {v5}, Lcom/google/android/gms/common/util/e;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 200
    if-nez v5, :cond_2

    .line 201
    const-string v5, "CheckinRequestBuilder"

    const-string v6, "no support for SHA-1?"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v5, "--NoSuchAlgorithmException--"

    invoke-virtual {p0, v5}, Lcom/google/android/gms/checkin/b/b;->j(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    .line 203
    add-int/lit8 v1, v1, 0x1

    .line 213
    :goto_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    :cond_0
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 222
    :catch_0
    move-exception v0

    .line 219
    const-string v2, "CheckinRequestBuilder"

    const-string v3, "error reading OTA certs"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    const-string v0, "--IOException--"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/b;->j(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    .line 221
    add-int/lit8 v1, v1, 0x1

    .line 223
    :goto_3
    if-nez v1, :cond_1

    .line 224
    const-string v0, "--no-output--"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/b;->j(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    .line 226
    :cond_1
    return-void

    .line 206
    :cond_2
    :goto_4
    :try_start_3
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_3

    .line 207
    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_4

    .line 209
    :cond_3
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 210
    invoke-virtual {p0, v5}, Lcom/google/android/gms/checkin/b/b;->j(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    :cond_4
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method

.method public static c(Landroid/content/Context;Lcom/google/android/gms/checkin/b/b;)V
    .locals 9

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 738
    iget-object v0, p1, Lcom/google/android/gms/checkin/b/b;->m:Lcom/google/android/gms/checkin/b/g;

    if-nez v0, :cond_0

    .line 739
    new-instance v0, Lcom/google/android/gms/checkin/b/g;

    invoke-direct {v0}, Lcom/google/android/gms/checkin/b/g;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/checkin/b/b;->a(Lcom/google/android/gms/checkin/b/g;)Lcom/google/android/gms/checkin/b/b;

    .line 741
    :cond_0
    iget-object v6, p1, Lcom/google/android/gms/checkin/b/b;->m:Lcom/google/android/gms/checkin/b/g;

    .line 743
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 744
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v7

    .line 747
    iget v0, v7, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    packed-switch v0, :pswitch_data_0

    move v0, v4

    :goto_0
    invoke-virtual {v6, v0}, Lcom/google/android/gms/checkin/b/g;->a(I)Lcom/google/android/gms/checkin/b/g;

    .line 748
    iget v0, v7, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    packed-switch v0, :pswitch_data_1

    move v0, v4

    :goto_1
    invoke-virtual {v6, v0}, Lcom/google/android/gms/checkin/b/g;->b(I)Lcom/google/android/gms/checkin/b/g;

    .line 749
    iget v0, v7, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    packed-switch v0, :pswitch_data_2

    move v0, v4

    :goto_2
    invoke-virtual {v6, v0}, Lcom/google/android/gms/checkin/b/g;->c(I)Lcom/google/android/gms/checkin/b/g;

    .line 751
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 752
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_3

    move v2, v4

    :goto_3
    :pswitch_0
    invoke-virtual {v6, v2}, Lcom/google/android/gms/checkin/b/g;->d(I)Lcom/google/android/gms/checkin/b/g;

    .line 754
    iget v0, v7, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    move v0, v1

    :goto_4
    invoke-virtual {v6, v0}, Lcom/google/android/gms/checkin/b/g;->a(Z)Lcom/google/android/gms/checkin/b/g;

    .line 756
    iget v0, v7, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_2

    :goto_5
    invoke-virtual {v6, v1}, Lcom/google/android/gms/checkin/b/g;->b(Z)Lcom/google/android/gms/checkin/b/g;

    .line 760
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 761
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 762
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 763
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v6, v0}, Lcom/google/android/gms/checkin/b/g;->e(I)Lcom/google/android/gms/checkin/b/g;

    .line 764
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v6, v0}, Lcom/google/android/gms/checkin/b/g;->f(I)Lcom/google/android/gms/checkin/b/g;

    .line 765
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v6, v0}, Lcom/google/android/gms/checkin/b/g;->g(I)Lcom/google/android/gms/checkin/b/g;

    .line 768
    iget v0, v7, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-virtual {v6, v0}, Lcom/google/android/gms/checkin/b/g;->h(I)Lcom/google/android/gms/checkin/b/g;

    .line 771
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 772
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v2

    .line 773
    if-eqz v2, :cond_3

    .line 774
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 775
    array-length v3, v2

    move v0, v4

    :goto_6
    if-ge v0, v3, :cond_3

    aget-object v5, v2, v0

    .line 776
    invoke-virtual {v6, v5}, Lcom/google/android/gms/checkin/b/g;->a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/g;

    .line 775
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :pswitch_1
    move v0, v1

    .line 747
    goto :goto_0

    :pswitch_2
    move v0, v2

    goto :goto_0

    :pswitch_3
    move v0, v3

    goto/16 :goto_0

    :pswitch_4
    move v0, v1

    .line 748
    goto :goto_1

    :pswitch_5
    move v0, v2

    goto :goto_1

    :pswitch_6
    move v0, v3

    goto :goto_1

    :pswitch_7
    move v0, v1

    .line 749
    goto :goto_2

    :pswitch_8
    move v0, v2

    goto :goto_2

    :pswitch_9
    move v0, v3

    goto :goto_2

    :pswitch_a
    move v0, v5

    goto :goto_2

    :pswitch_b
    move v2, v1

    .line 752
    goto :goto_3

    :pswitch_c
    move v2, v3

    goto :goto_3

    :pswitch_d
    move v2, v5

    goto :goto_3

    :cond_1
    move v0, v4

    .line 754
    goto :goto_4

    :cond_2
    move v1, v4

    .line 756
    goto :goto_5

    .line 781
    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v3

    .line 784
    if-eqz v3, :cond_5

    .line 785
    array-length v0, v3

    new-array v5, v0, [Ljava/lang/String;

    .line 787
    array-length v7, v3

    move v2, v4

    move v1, v4

    :goto_7
    if-ge v2, v7, :cond_4

    aget-object v8, v3, v2

    .line 788
    iget-object v0, v8, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 789
    add-int/lit8 v0, v1, 0x1

    iget-object v8, v8, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    aput-object v8, v5, v1

    .line 787
    :goto_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_7

    .line 792
    :cond_4
    invoke-static {v5, v4, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    move v0, v4

    .line 793
    :goto_9
    if-ge v0, v1, :cond_5

    .line 794
    aget-object v2, v5, v0

    invoke-virtual {v6, v2}, Lcom/google/android/gms/checkin/b/g;->b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/g;

    .line 793
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 799
    :cond_5
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/checkin/b/g;->c(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/g;

    .line 804
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 805
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/checkin/b/g;->c(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/g;

    .line 809
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    .line 810
    if-eqz v0, :cond_8

    .line 811
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 812
    array-length v1, v0

    :goto_a
    if-ge v4, v1, :cond_8

    aget-object v2, v0, v4

    .line 813
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 814
    invoke-virtual {v6, v2}, Lcom/google/android/gms/checkin/b/g;->d(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/g;

    .line 812
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 820
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/google/android/gms/checkin/CheckinService;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "CheckinService_cachedGlExt"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/gms/checkin/CheckinService;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 821
    invoke-virtual {v6, v0}, Lcom/google/android/gms/checkin/b/g;->e(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/g;

    goto :goto_c

    .line 820
    :cond_9
    invoke-static {}, Lcom/google/android/gms/checkin/a;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v2, " "

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "CheckinService_cachedGlExt"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_b

    .line 823
    :cond_a
    return-void

    :cond_b
    move v0, v1

    goto/16 :goto_8

    .line 747
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 748
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 749
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 752
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static d(Landroid/content/Context;Lcom/google/android/gms/checkin/b/b;)V
    .locals 8

    .prologue
    .line 836
    iget v0, p1, Lcom/google/android/gms/checkin/b/b;->n:I

    if-nez v0, :cond_5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "checkin_droidguard_percent"

    invoke-static {v2, v3}, Lcom/google/android/gsf/e;->b(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    .line 839
    const/4 v1, 0x0

    .line 841
    :try_start_0
    const-string v3, "checkin"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p0}, Lcom/google/android/gms/g/a;->a(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/16 v0, 0x3a

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-boolean v0, p1, Lcom/google/android/gms/checkin/b/b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/checkin/b/b;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3a

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/checkin/b/b;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/checkin/b/b;->d:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3a

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-boolean v0, p1, Lcom/google/android/gms/checkin/b/b;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/checkin/b/b;->j:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3a

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    iget-boolean v0, p1, Lcom/google/android/gms/checkin/b/b;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/checkin/b/b;->h:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3a

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p1, Lcom/google/android/gms/checkin/b/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/checkin/b/b;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3a

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p1, Lcom/google/android/gms/checkin/b/b;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3a

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v2, "SHA-1"

    invoke-static {v2}, Lcom/google/android/gms/common/util/e;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v0, "CheckinRequestBuilder"

    const-string v2, "no support for SHA-1"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {p0, v3, v4}, Lcom/google/android/gms/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 848
    :goto_2
    if-eqz v0, :cond_5

    .line 849
    invoke-virtual {p1, v0}, Lcom/google/android/gms/checkin/b/b;->k(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    .line 852
    :cond_5
    return-void

    .line 841
    :cond_6
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    const-string v0, "CONTENT_BINDER"

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 845
    :catch_0
    move-exception v0

    .line 846
    const-string v2, "CheckinRequestBuilder"

    const-string v3, "Droidguard runtime exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_2
.end method

.method public static e(Landroid/content/Context;Lcom/google/android/gms/checkin/b/b;)V
    .locals 3

    .prologue
    .line 859
    invoke-static {p0}, Lcom/google/android/gms/checkin/CheckinService;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 860
    const-string v1, "CheckinService_deviceDataVersionInfo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 862
    if-eqz v0, :cond_1

    .line 863
    const-string v1, "CheckinRequestBuilder"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 864
    const-string v1, "CheckinRequestBuilder"

    const-string v2, "Found a deviceDataVersionInfo stored. Adding it to the request."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/checkin/b/b;->l(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    .line 868
    :cond_1
    return-void
.end method

.method public static f(Landroid/content/Context;Lcom/google/android/gms/checkin/b/b;)V
    .locals 3

    .prologue
    .line 945
    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v1

    .line 946
    invoke-virtual {v1, p0}, Lcom/google/android/gms/c/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 947
    if-nez v0, :cond_0

    .line 948
    invoke-virtual {v1, p0}, Lcom/google/android/gms/c/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 950
    :cond_0
    if-eqz v0, :cond_2

    .line 951
    invoke-static {p0, v0}, Lcom/google/android/gms/checkin/a;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    .line 952
    new-instance v2, Lcom/google/android/gms/checkin/b/e;

    invoke-direct {v2}, Lcom/google/android/gms/checkin/b/e;-><init>()V

    .line 953
    invoke-virtual {v2, v0}, Lcom/google/android/gms/checkin/b/e;->a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/e;

    .line 954
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/checkin/b/e;->a(Lcom/google/protobuf/a/a;)Lcom/google/android/gms/checkin/b/e;

    .line 955
    :cond_1
    invoke-virtual {p1, v2}, Lcom/google/android/gms/checkin/b/b;->a(Lcom/google/android/gms/checkin/b/e;)Lcom/google/android/gms/checkin/b/b;

    .line 957
    :cond_2
    return-void
.end method
