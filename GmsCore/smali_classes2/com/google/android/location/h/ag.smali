.class public final Lcom/google/android/location/h/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private final b:D

.field private final c:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0.0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "1.1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "1.5"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "1.6"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "2.0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "2.0"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "2.1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "2.2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "2.3"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "2.3"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "3.0"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "3.1"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "3.2"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "4.0"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "4.0"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "4.1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/location/h/ag;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/google/android/location/h/ag;->b:D

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/h/ag;->c:D

    .line 95
    return-void
.end method

.method private constructor <init>(DD)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-wide p1, p0, Lcom/google/android/location/h/ag;->b:D

    .line 87
    iput-wide p3, p0, Lcom/google/android/location/h/ag;->c:D

    .line 88
    return-void
.end method

.method public static a(Lcom/google/android/location/os/at;)Lcom/google/android/location/h/ag;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 98
    invoke-interface {p0}, Lcom/google/android/location/os/at;->j()Lcom/google/android/location/os/au;

    move-result-object v1

    .line 99
    iget-object v0, v1, Lcom/google/android/location/os/au;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 101
    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiNormalizer"

    const-string v1, "Can\'t recognize null fingerprint"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    new-instance v0, Lcom/google/android/location/h/ag;

    invoke-direct {v0}, Lcom/google/android/location/h/ag;-><init>()V

    .line 130
    :cond_1
    :goto_0
    return-object v0

    .line 104
    :cond_2
    iget-object v0, v1, Lcom/google/android/location/os/au;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 105
    array-length v0, v2

    if-ge v0, v8, :cond_4

    .line 107
    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_3

    const-string v0, "WifiNormalizer"

    const-string v2, "Can\'t recognize fingerprint \"%s\""

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/android/location/os/au;->c:Ljava/lang/String;

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_3
    new-instance v0, Lcom/google/android/location/h/ag;

    invoke-direct {v0}, Lcom/google/android/location/h/ag;-><init>()V

    goto :goto_0

    .line 110
    :cond_4
    sget-object v0, Lcom/google/android/location/h/ag;->a:[Ljava/lang/String;

    aget-object v0, v0, v6

    .line 111
    iget v3, v1, Lcom/google/android/location/os/au;->d:I

    sget-object v4, Lcom/google/android/location/h/ag;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_7

    .line 112
    sget-object v0, Lcom/google/android/location/h/ag;->a:[Ljava/lang/String;

    iget v1, v1, Lcom/google/android/location/os/au;->d:I

    aget-object v0, v0, v1

    .line 116
    :cond_5
    :goto_1
    const-string v1, "%s/%s/%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, v2, v6

    aput-object v4, v3, v6

    aget-object v4, v2, v7

    aput-object v4, v3, v7

    aput-object v0, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    const-string v1, "%s/%s/"

    new-array v3, v8, [Ljava/lang/Object;

    aget-object v4, v2, v6

    aput-object v4, v3, v6

    aget-object v2, v2, v7

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    const-string v2, "models.txt"

    invoke-interface {p0, v2}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 119
    if-nez v2, :cond_8

    .line 120
    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_6

    const-string v0, "WifiNormalizer"

    const-string v1, "Asset file doesn\'t exist."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_6
    new-instance v0, Lcom/google/android/location/h/ag;

    invoke-direct {v0}, Lcom/google/android/location/h/ag;-><init>()V

    goto :goto_0

    .line 114
    :cond_7
    sget-boolean v3, Lcom/google/android/location/j/a;->d:Z

    if-eqz v3, :cond_5

    const-string v3, "WifiNormalizer"

    const-string v4, "We don\'t have support for version %d yet."

    new-array v5, v7, [Ljava/lang/Object;

    iget v1, v1, Lcom/google/android/location/os/au;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 123
    :cond_8
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 124
    invoke-static {v3, v0, v1}, Lcom/google/android/location/h/ag;->a(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/location/h/ag;

    move-result-object v0

    .line 126
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    sget-boolean v2, Lcom/google/android/location/j/a;->e:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiNormalizer"

    const-string v3, "close"

    invoke-static {v2, v3, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private static a(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/location/h/ag;
    .locals 20

    .prologue
    .line 143
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 145
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 146
    const-wide/16 v10, 0x0

    .line 147
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 148
    const/4 v2, 0x0

    .line 150
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_9

    .line 151
    const-string v4, "#"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 153
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 156
    const-string v4, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 157
    array-length v5, v4

    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    .line 158
    sget-boolean v4, Lcom/google/android/location/j/a;->e:Z

    if-eqz v4, :cond_1

    const-string v4, "WifiNormalizer"

    const-string v5, "Invalid line \"%s\"."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v17, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1
    new-instance v4, Lcom/google/android/location/h/ag;

    invoke-direct {v4}, Lcom/google/android/location/h/ag;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v4

    .line 214
    :goto_1
    return-object v2

    .line 162
    :cond_2
    const/4 v5, 0x1

    :try_start_1
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 163
    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 166
    const-wide/16 v4, 0x0

    cmpg-double v4, v6, v4

    if-ltz v4, :cond_3

    const-wide/high16 v4, -0x3fa7000000000000L    # -100.0

    cmpg-double v4, v8, v4

    if-ltz v4, :cond_3

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpl-double v4, v8, v4

    if-lez v4, :cond_5

    .line 167
    :cond_3
    sget-boolean v4, Lcom/google/android/location/j/a;->e:Z

    if-eqz v4, :cond_4

    const-string v4, "WifiNormalizer"

    const-string v5, "Invalid parameters %.2f, %.2f."

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v12, v13

    const/4 v6, 0x1

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v12, v6

    invoke-static {v5, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_4
    new-instance v4, Lcom/google/android/location/h/ag;

    invoke-direct {v4}, Lcom/google/android/location/h/ag;-><init>()V

    move-object v2, v4

    goto :goto_1

    .line 170
    :cond_5
    sget-boolean v4, Lcom/google/android/location/j/a;->c:Z

    if-eqz v4, :cond_6

    const-string v4, "WifiNormalizer"

    const-string v5, "Recognized %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-static {v5, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_6
    new-instance v4, Lcom/google/android/location/h/ag;

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/google/android/location/h/ag;-><init>(DD)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v4

    goto :goto_1

    .line 173
    :catch_0
    move-exception v4

    :try_start_2
    sget-boolean v4, Lcom/google/android/location/j/a;->e:Z

    if-eqz v4, :cond_7

    const-string v4, "WifiNormalizer"

    const-string v5, "Invalid line \"%s\"."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v17, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_7
    new-instance v4, Lcom/google/android/location/h/ag;

    invoke-direct {v4}, Lcom/google/android/location/h/ag;-><init>()V

    move-object v2, v4

    goto/16 :goto_1

    .line 177
    :cond_8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    const-string v4, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 179
    array-length v5, v4

    const/4 v8, 0x3

    if-ge v5, v8, :cond_b

    .line 180
    sget-boolean v4, Lcom/google/android/location/j/a;->e:Z

    if-eqz v4, :cond_0

    const-string v4, "WifiNormalizer"

    const-string v5, "Invalid line \"%s\"."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v17, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 205
    :catch_1
    move-exception v4

    .line 206
    sget-boolean v5, Lcom/google/android/location/j/a;->e:Z

    if-eqz v5, :cond_9

    const-string v5, "WifiNormalizer"

    const-string v6, "readLine"

    invoke-static {v5, v6, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    :cond_9
    if-eqz v2, :cond_e

    .line 209
    sget-boolean v4, Lcom/google/android/location/j/a;->d:Z

    if-eqz v4, :cond_a

    const-string v4, "WifiNormalizer"

    const-string v5, "Can\'t recognize %s but fallback %s found"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v2, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_a
    new-instance v2, Lcom/google/android/location/h/ag;

    invoke-direct {v2, v14, v15, v10, v11}, Lcom/google/android/location/h/ag;-><init>(DD)V

    goto/16 :goto_1

    .line 184
    :cond_b
    const/4 v5, 0x1

    :try_start_3
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 185
    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 186
    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 189
    const-wide/16 v18, 0x0

    cmpg-double v18, v12, v18

    if-ltz v18, :cond_c

    const-wide/high16 v18, -0x3fa7000000000000L    # -100.0

    cmpg-double v18, v8, v18

    if-ltz v18, :cond_c

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    cmpl-double v18, v8, v18

    if-lez v18, :cond_d

    .line 190
    :cond_c
    sget-boolean v4, Lcom/google/android/location/j/a;->e:Z

    if-eqz v4, :cond_0

    const-string v4, "WifiNormalizer"

    const-string v5, "Invalid parameters %.2f, %.2f."

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v18, v19

    const/4 v12, 0x1

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v18, v12

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 200
    :catch_2
    move-exception v4

    :try_start_4
    sget-boolean v4, Lcom/google/android/location/j/a;->e:Z

    if-eqz v4, :cond_0

    const-string v4, "WifiNormalizer"

    const-string v5, "Invalid line \"%s\"."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v17, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 193
    :cond_d
    cmpg-double v17, v4, v6

    if-gez v17, :cond_10

    move-object v2, v3

    move-wide v6, v8

    move-wide v8, v12

    :goto_2
    move-wide v10, v6

    move-wide v14, v8

    move-wide v6, v4

    .line 202
    goto/16 :goto_0

    .line 213
    :cond_e
    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_f

    const-string v2, "WifiNormalizer"

    const-string v4, "Can\'t recognize %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_f
    new-instance v2, Lcom/google/android/location/h/ag;

    invoke-direct {v2}, Lcom/google/android/location/h/ag;-><init>()V

    goto/16 :goto_1

    :cond_10
    move-wide v4, v6

    move-wide v8, v14

    move-wide v6, v10

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Ljava/util/Map;
    .locals 8

    .prologue
    .line 236
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 237
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 238
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-wide v4, p0, Lcom/google/android/location/h/ag;->b:D

    int-to-double v6, v0

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/google/android/location/h/ag;->c:D

    add-double/2addr v4, v6

    double-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 240
    :cond_0
    return-object v1
.end method
