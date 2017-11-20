.class public final Lcom/google/android/gms/common/server/response/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:[C

.field private static final g:[C

.field private static final h:[C

.field private static final i:[C

.field private static final j:[C

.field private static final k:[C

.field private static final m:Lcom/google/android/gms/common/server/response/m;

.field private static final n:Lcom/google/android/gms/common/server/response/m;

.field private static final o:Lcom/google/android/gms/common/server/response/m;

.field private static final p:Lcom/google/android/gms/common/server/response/m;

.field private static final q:Lcom/google/android/gms/common/server/response/m;

.field private static final r:Lcom/google/android/gms/common/server/response/m;

.field private static final s:Lcom/google/android/gms/common/server/response/m;

.field private static final t:Lcom/google/android/gms/common/server/response/m;


# instance fields
.field private final a:[C

.field private final b:[C

.field private final c:[C

.field private final d:Ljava/lang/StringBuilder;

.field private final e:Ljava/lang/StringBuilder;

.field private final l:Ljava/util/Stack;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 75
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/common/server/response/c;->f:[C

    .line 77
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/common/server/response/c;->g:[C

    .line 78
    new-array v0, v2, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/common/server/response/c;->h:[C

    .line 80
    new-array v0, v2, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/gms/common/server/response/c;->i:[C

    .line 81
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/gms/common/server/response/c;->j:[C

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput-char v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/server/response/c;->k:[C

    .line 123
    new-instance v0, Lcom/google/android/gms/common/server/response/d;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/c;->m:Lcom/google/android/gms/common/server/response/m;

    .line 131
    new-instance v0, Lcom/google/android/gms/common/server/response/e;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/c;->n:Lcom/google/android/gms/common/server/response/m;

    .line 139
    new-instance v0, Lcom/google/android/gms/common/server/response/f;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/c;->o:Lcom/google/android/gms/common/server/response/m;

    .line 147
    new-instance v0, Lcom/google/android/gms/common/server/response/g;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/c;->p:Lcom/google/android/gms/common/server/response/m;

    .line 155
    new-instance v0, Lcom/google/android/gms/common/server/response/h;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/c;->q:Lcom/google/android/gms/common/server/response/m;

    .line 163
    new-instance v0, Lcom/google/android/gms/common/server/response/i;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/c;->r:Lcom/google/android/gms/common/server/response/m;

    .line 171
    new-instance v0, Lcom/google/android/gms/common/server/response/j;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/c;->s:Lcom/google/android/gms/common/server/response/m;

    .line 180
    new-instance v0, Lcom/google/android/gms/common/server/response/k;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/c;->t:Lcom/google/android/gms/common/server/response/m;

    return-void

    .line 75
    nop

    :array_0
    .array-data 2
        0x75s
        0x6cs
        0x6cs
    .end array-data

    .line 77
    nop

    :array_1
    .array-data 2
        0x72s
        0x75s
        0x65s
    .end array-data

    .line 78
    nop

    :array_2
    .array-data 2
        0x72s
        0x75s
        0x65s
        0x22s
    .end array-data

    .line 80
    :array_3
    .array-data 2
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data

    .line 81
    :array_4
    .array-data 2
        0x61s
        0x6cs
        0x73s
        0x65s
        0x22s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    const/16 v1, 0x20

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/c;->a:[C

    .line 49
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/c;->b:[C

    .line 50
    new-array v0, v2, [C

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/c;->c:[C

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/c;->d:Ljava/lang/StringBuilder;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/c;->e:Ljava/lang/StringBuilder;

    .line 91
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/c;->l:Ljava/util/Stack;

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/server/response/c;Ljava/io/BufferedReader;)I
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->d(Ljava/io/BufferedReader;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/io/BufferedReader;[C)I
    .locals 8

    .prologue
    const/16 v5, 0x2c

    const/16 v7, 0x22

    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1105
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v0

    .line 1106
    if-nez v0, :cond_0

    .line 1107
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Unexpected EOF"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1108
    :cond_0
    if-ne v0, v5, :cond_1

    .line 1109
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Missing value"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1110
    :cond_1
    const/16 v2, 0x6e

    if-ne v0, v2, :cond_2

    .line 1112
    sget-object v0, Lcom/google/android/gms/common/server/response/c;->f:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/c;->b(Ljava/io/BufferedReader;[C)V

    .line 1155
    :goto_0
    return v1

    .line 1118
    :cond_2
    const/16 v2, 0x400

    invoke-virtual {p1, v2}, Ljava/io/BufferedReader;->mark(I)V

    .line 1122
    if-ne v0, v7, :cond_9

    move v0, v1

    move v2, v1

    .line 1126
    :goto_1
    array-length v4, p2

    if-ge v2, v4, :cond_7

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/BufferedReader;->read([CII)I

    move-result v4

    if-eq v4, v6, :cond_7

    .line 1127
    aget-char v4, p2, v2

    .line 1128
    invoke-static {v4}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1129
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Unexpected control character while reading string"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1131
    :cond_3
    if-ne v4, v7, :cond_4

    if-nez v0, :cond_4

    .line 1134
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 1135
    add-int/lit8 v0, v2, 0x1

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/BufferedReader;->skip(J)J

    move v1, v2

    .line 1136
    goto :goto_0

    .line 1138
    :cond_4
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_6

    .line 1140
    if-nez v0, :cond_5

    move v0, v3

    .line 1144
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 1140
    goto :goto_2

    :cond_6
    move v0, v1

    .line 1142
    goto :goto_2

    :cond_7
    move v0, v2

    .line 1160
    :cond_8
    array-length v1, p2

    if-ne v0, v1, :cond_c

    .line 1161
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Absurdly long value"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1147
    :cond_9
    aput-char v0, p2, v1

    move v0, v3

    .line 1148
    :goto_3
    array-length v2, p2

    if-ge v0, v2, :cond_8

    invoke-virtual {p1, p2, v0, v3}, Ljava/io/BufferedReader;->read([CII)I

    move-result v2

    if-eq v2, v6, :cond_8

    .line 1149
    aget-char v2, p2, v0

    const/16 v4, 0x7d

    if-eq v2, v4, :cond_a

    aget-char v2, p2, v0

    if-eq v2, v5, :cond_a

    aget-char v2, p2, v0

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_a

    aget-char v2, p2, v0

    const/16 v4, 0x5d

    if-ne v2, v4, :cond_b

    .line 1152
    :cond_a
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 1153
    add-int/lit8 v2, v0, -0x1

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Ljava/io/BufferedReader;->skip(J)J

    .line 1154
    aput-char v1, p2, v0

    move v1, v0

    .line 1155
    goto :goto_0

    .line 1157
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1163
    :cond_c
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Unexpected EOF"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    const/4 v3, 0x2

    .line 478
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/c;->l:Ljava/util/Stack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v1

    .line 480
    sparse-switch v1, :sswitch_data_0

    .line 499
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected token: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :sswitch_0
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    .line 497
    :cond_0
    :goto_0
    return-object v0

    .line 485
    :sswitch_1
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    .line 486
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    .line 487
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    goto :goto_0

    .line 490
    :sswitch_2
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/c;->l:Ljava/util/Stack;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/c;->b:[C

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/c;->d:Ljava/lang/StringBuilder;

    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/common/server/response/c;->b(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-direct {p0, v4}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    .line 493
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_0

    .line 494
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Expected key/value separator"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x5d -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;
    .locals 2

    .prologue
    .line 776
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v0

    .line 777
    sparse-switch v0, :sswitch_data_0

    .line 785
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Expected string"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :sswitch_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/server/response/c;->b(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v0

    .line 783
    :goto_0
    return-object v0

    .line 782
    :sswitch_1
    sget-object v0, Lcom/google/android/gms/common/server/response/c;->f:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/c;->b(Ljava/io/BufferedReader;[C)V

    .line 783
    const/4 v0, 0x0

    goto :goto_0

    .line 777
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/util/ArrayList;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x5

    .line 1011
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1012
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v1

    .line 1013
    sparse-switch v1, :sswitch_data_0

    .line 1027
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected token: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1015
    :sswitch_0
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    .line 1064
    :cond_0
    :goto_0
    return-object v0

    .line 1019
    :sswitch_1
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/c;->l:Ljava/util/Stack;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    :goto_1
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->m()Lcom/google/android/gms/common/server/response/FastJsonResponse;

    move-result-object v1

    .line 1035
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1036
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1048
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v1

    .line 1049
    sparse-switch v1, :sswitch_data_1

    .line 1061
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected token: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1023
    :sswitch_2
    sget-object v0, Lcom/google/android/gms/common/server/response/c;->f:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/c;->b(Ljava/io/BufferedReader;[C)V

    .line 1024
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    .line 1025
    const/4 v0, 0x0

    goto :goto_0

    .line 1045
    :catch_0
    move-exception v0

    .line 1042
    new-instance v1, Lcom/google/android/gms/common/server/response/l;

    const-string v2, "Error instantiating inner object"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1043
    :catch_1
    move-exception v0

    .line 1044
    new-instance v1, Lcom/google/android/gms/common/server/response/l;

    const-string v2, "Error instantiating inner object"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1051
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_1

    .line 1052
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Expected start of next object in array"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1054
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/c;->l:Ljava/util/Stack;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1057
    :sswitch_4
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    goto :goto_0

    .line 1013
    nop

    :sswitch_data_0
    .sparse-switch
        0x5d -> :sswitch_0
        0x6e -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch

    .line 1049
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_3
        0x5d -> :sswitch_4
    .end sparse-switch
.end method

.method private a(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/m;)Ljava/util/ArrayList;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 664
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v0

    .line 665
    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    .line 667
    sget-object v0, Lcom/google/android/gms/common/server/response/c;->f:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/c;->b(Ljava/io/BufferedReader;[C)V

    .line 668
    const/4 v0, 0x0

    .line 685
    :goto_0
    return-object v0

    .line 670
    :cond_0
    const/16 v1, 0x5b

    if-eq v0, v1, :cond_1

    .line 671
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Expected start of array"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/c;->l:Ljava/util/Stack;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 676
    :goto_1
    :sswitch_0
    const/16 v1, 0x400

    invoke-virtual {p1, v1}, Ljava/io/BufferedReader;->mark(I)V

    .line 677
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v1

    .line 678
    sparse-switch v1, :sswitch_data_0

    .line 689
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 690
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/common/server/response/m;->a(Lcom/google/android/gms/common/server/response/c;Ljava/io/BufferedReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 683
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    goto :goto_0

    .line 687
    :sswitch_2
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Unexpected EOF"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2c -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/c;->l:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but had empty stack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/c;->l:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1206
    if-eq v0, p1, :cond_1

    .line 1207
    new-instance v1, Lcom/google/android/gms/common/server/response/l;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but had "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1210
    :cond_1
    return-void
.end method

.method private a(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v3, 0x0

    const/16 v9, 0x6e

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 299
    invoke-virtual {p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a()Ljava/util/HashMap;

    move-result-object v5

    .line 300
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    .line 301
    if-nez v0, :cond_0

    .line 303
    invoke-direct {p0, v4}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    move v0, v3

    .line 464
    :goto_0
    return v0

    :sswitch_0
    move-object v0, v2

    .line 306
    :cond_0
    :goto_1
    if-eqz v0, :cond_16

    .line 307
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    .line 308
    if-nez v0, :cond_1

    .line 311
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->b(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/c;->l:Ljava/util/Stack;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 432
    new-instance v1, Lcom/google/android/gms/common/server/response/l;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid field type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :pswitch_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 318
    sget-object v1, Lcom/google/android/gms/common/server/response/c;->m:Lcom/google/android/gms/common/server/response/m;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/m;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    .line 436
    :goto_2
    invoke-direct {p0, v10}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    .line 437
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    .line 440
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v0

    .line 441
    sparse-switch v0, :sswitch_data_0

    .line 450
    new-instance v1, Lcom/google/android/gms/common/server/response/l;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected end of object or field separator, but found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->d(Ljava/io/BufferedReader;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;I)V

    goto :goto_2

    .line 324
    :pswitch_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 325
    sget-object v1, Lcom/google/android/gms/common/server/response/c;->s:Lcom/google/android/gms/common/server/response/m;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/m;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 328
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->f(Ljava/io/BufferedReader;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/math/BigInteger;)V

    goto :goto_2

    .line 332
    :pswitch_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 333
    sget-object v1, Lcom/google/android/gms/common/server/response/c;->n:Lcom/google/android/gms/common/server/response/m;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/m;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->c(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 335
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->e(Ljava/io/BufferedReader;)J

    move-result-wide v6

    invoke-virtual {p2, v0, v6, v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;J)V

    goto :goto_2

    .line 339
    :pswitch_3
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 340
    sget-object v1, Lcom/google/android/gms/common/server/response/c;->o:Lcom/google/android/gms/common/server/response/m;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/m;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->d(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 342
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->g(Ljava/io/BufferedReader;)F

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;F)V

    goto :goto_2

    .line 346
    :pswitch_4
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 347
    sget-object v1, Lcom/google/android/gms/common/server/response/c;->p:Lcom/google/android/gms/common/server/response/m;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/m;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->e(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 349
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->h(Ljava/io/BufferedReader;)D

    move-result-wide v6

    invoke-virtual {p2, v0, v6, v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;D)V

    goto/16 :goto_2

    .line 353
    :pswitch_5
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 354
    sget-object v1, Lcom/google/android/gms/common/server/response/c;->t:Lcom/google/android/gms/common/server/response/m;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/m;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->f(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 357
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->i(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/math/BigDecimal;)V

    goto/16 :goto_2

    .line 361
    :pswitch_6
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 362
    sget-object v1, Lcom/google/android/gms/common/server/response/c;->q:Lcom/google/android/gms/common/server/response/m;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/m;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->g(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 364
    :cond_8
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;Z)Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Z)V

    goto/16 :goto_2

    .line 368
    :pswitch_7
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 369
    sget-object v1, Lcom/google/android/gms/common/server/response/c;->r:Lcom/google/android/gms/common/server/response/m;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/m;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->h(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 371
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->c(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 375
    :pswitch_8
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/c;->c:[C

    iget-object v6, p0, Lcom/google/android/gms/common/server/response/c;->e:Ljava/lang/StringBuilder;

    sget-object v7, Lcom/google/android/gms/common/server/response/c;->k:[C

    invoke-direct {p0, p1, v1, v6, v7}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/g;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;[B)V

    goto/16 :goto_2

    .line 379
    :pswitch_9
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/c;->c:[C

    iget-object v6, p0, Lcom/google/android/gms/common/server/response/c;->e:Ljava/lang/StringBuilder;

    sget-object v7, Lcom/google/android/gms/common/server/response/c;->k:[C

    invoke-direct {p0, p1, v1, v6, v7}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move-object v1, v2

    :goto_3
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;[B)V

    goto/16 :goto_2

    :cond_a
    const/16 v6, 0xa

    invoke-static {v1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_3

    .line 383
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v1

    if-ne v1, v9, :cond_b

    sget-object v1, Lcom/google/android/gms/common/server/response/c;->f:[C

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/c;->b(Ljava/io/BufferedReader;[C)V

    move-object v1, v2

    :goto_4
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/Map;)V

    goto/16 :goto_2

    :cond_b
    const/16 v6, 0x7b

    if-eq v1, v6, :cond_c

    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Expected start of a map object"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/c;->l:Ljava/util/Stack;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_d
    :goto_5
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v6

    sparse-switch v6, :sswitch_data_1

    goto :goto_5

    :sswitch_1
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Unexpected EOF"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2
    iget-object v6, p0, Lcom/google/android/gms/common/server/response/c;->b:[C

    iget-object v7, p0, Lcom/google/android/gms/common/server/response/c;->d:Ljava/lang/StringBuilder;

    invoke-static {p1, v6, v7, v2}, Lcom/google/android/gms/common/server/response/c;->b(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v7

    const/16 v8, 0x3a

    if-eq v7, v8, :cond_e

    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No map value found for key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v7

    const/16 v8, 0x22

    if-eq v7, v8, :cond_f

    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected String value for key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v7, p0, Lcom/google/android/gms/common/server/response/c;->b:[C

    iget-object v8, p0, Lcom/google/android/gms/common/server/response/c;->d:Ljava/lang/StringBuilder;

    invoke-static {p1, v7, v8, v2}, Lcom/google/android/gms/common/server/response/c;->b(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v6

    const/16 v7, 0x2c

    if-eq v6, v7, :cond_d

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_10

    invoke-direct {p0, v4}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    goto/16 :goto_4

    :cond_10
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected character while parsing string map: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_3
    invoke-direct {p0, v4}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    goto/16 :goto_4

    .line 386
    :pswitch_b
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 389
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v1

    .line 390
    if-ne v1, v9, :cond_11

    .line 392
    sget-object v1, Lcom/google/android/gms/common/server/response/c;->f:[C

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/c;->b(Ljava/io/BufferedReader;[C)V

    .line 393
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 399
    :cond_11
    iget-object v6, p0, Lcom/google/android/gms/common/server/response/c;->l:Ljava/util/Stack;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const/16 v6, 0x5b

    if-eq v1, v6, :cond_12

    .line 401
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Expected array start"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_12
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p2, v0, v1, v6}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 407
    :cond_13
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v1

    .line 408
    if-ne v1, v9, :cond_14

    .line 410
    sget-object v1, Lcom/google/android/gms/common/server/response/c;->f:[C

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/c;->b(Ljava/io/BufferedReader;[C)V

    .line 411
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V

    goto/16 :goto_2

    .line 417
    :cond_14
    iget-object v6, p0, Lcom/google/android/gms/common/server/response/c;->l:Ljava/util/Stack;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const/16 v6, 0x7b

    if-eq v1, v6, :cond_15

    .line 419
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Expected start of object"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_15
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->m()Lcom/google/android/gms/common/server/response/FastJsonResponse;

    move-result-object v1

    .line 423
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z

    .line 424
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v0, v6, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 426
    :catch_0
    move-exception v0

    .line 427
    new-instance v1, Lcom/google/android/gms/common/server/response/l;

    const-string v2, "Error instantiating inner object"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 428
    :catch_1
    move-exception v0

    .line 429
    new-instance v1, Lcom/google/android/gms/common/server/response/l;

    const-string v2, "Error instantiating inner object"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 447
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 454
    :cond_16
    invoke-direct {p0, v4}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    move v0, v4

    .line 464
    goto/16 :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 441
    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_4
        0x7d -> :sswitch_0
    .end sparse-switch

    .line 383
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0x22 -> :sswitch_2
        0x7d -> :sswitch_3
    .end sparse-switch
.end method

.method private a(Ljava/io/BufferedReader;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 925
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v2

    .line 926
    sparse-switch v2, :sswitch_data_0

    .line 942
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected token: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :sswitch_0
    sget-object v0, Lcom/google/android/gms/common/server/response/c;->f:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/c;->b(Ljava/io/BufferedReader;[C)V

    move v0, v1

    .line 935
    :goto_1
    return v0

    .line 931
    :sswitch_1
    if-eqz p2, :cond_0

    sget-object v1, Lcom/google/android/gms/common/server/response/c;->h:[C

    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/c;->b(Ljava/io/BufferedReader;[C)V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/google/android/gms/common/server/response/c;->g:[C

    goto :goto_2

    .line 934
    :sswitch_2
    if-eqz p2, :cond_1

    sget-object v0, Lcom/google/android/gms/common/server/response/c;->j:[C

    :goto_3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/c;->b(Ljava/io/BufferedReader;[C)V

    move v0, v1

    .line 935
    goto :goto_1

    .line 934
    :cond_1
    sget-object v0, Lcom/google/android/gms/common/server/response/c;->i:[C

    goto :goto_3

    .line 937
    :sswitch_3
    if-eqz p2, :cond_2

    .line 938
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "No boolean value found in string"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move p2, v0

    .line 940
    goto :goto_0

    .line 926
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x66 -> :sswitch_2
        0x6e -> :sswitch_0
        0x74 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic b(Lcom/google/android/gms/common/server/response/c;Ljava/io/BufferedReader;)J
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->e(Ljava/io/BufferedReader;)J

    move-result-wide v0

    return-wide v0
.end method

.method private b(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v5, -0x1

    const/16 v8, 0x22

    const/4 v7, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 514
    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->mark(I)V

    .line 515
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v0

    .line 516
    sparse-switch v0, :sswitch_data_0

    .line 618
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 619
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/c;->c:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;[C)I

    .line 624
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v0

    .line 625
    sparse-switch v0, :sswitch_data_1

    .line 633
    new-instance v1, Lcom/google/android/gms/common/server/response/l;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected token "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v1

    .line 522
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/c;->a:[C

    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 523
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Unexpected EOF while parsing string"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/c;->a:[C

    aget-char v0, v0, v2

    move v3, v2

    .line 526
    :goto_1
    if-ne v0, v8, :cond_2

    if-eqz v3, :cond_0

    .line 527
    :cond_2
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_4

    .line 529
    if-nez v3, :cond_3

    move v0, v1

    .line 533
    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/common/server/response/c;->a:[C

    invoke-virtual {p1, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 534
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Unexpected EOF while parsing string"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v2

    .line 529
    goto :goto_2

    :cond_4
    move v0, v2

    .line 531
    goto :goto_2

    .line 536
    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/common/server/response/c;->a:[C

    aget-char v3, v3, v2

    .line 537
    invoke-static {v3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 538
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Unexpected control character while reading string"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/c;->l:Ljava/util/Stack;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->mark(I)V

    .line 548
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v0

    .line 549
    const/16 v2, 0x7d

    if-ne v0, v2, :cond_6

    .line 551
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    goto :goto_0

    .line 552
    :cond_6
    if-ne v0, v8, :cond_8

    .line 554
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 555
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 556
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->b(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 560
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    goto/16 :goto_0

    .line 562
    :cond_8
    new-instance v1, Lcom/google/android/gms/common/server/response/l;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected token "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v1

    .line 568
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/c;->l:Ljava/util/Stack;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->mark(I)V

    .line 570
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v0

    .line 571
    const/16 v3, 0x5d

    if-ne v0, v3, :cond_9

    .line 573
    invoke-direct {p0, v7}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    goto/16 :goto_0

    .line 577
    :cond_9
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    move v3, v1

    move v0, v2

    move v5, v2

    .line 582
    :goto_3
    if-lez v3, :cond_f

    .line 583
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v6

    .line 584
    if-nez v6, :cond_a

    .line 585
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Unexpected EOF while parsing array"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_a
    invoke-static {v6}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 588
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Unexpected control character while reading array"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_b
    if-ne v6, v8, :cond_12

    if-nez v5, :cond_12

    .line 593
    if-nez v0, :cond_c

    move v0, v1

    :goto_4
    move v4, v0

    .line 595
    :goto_5
    const/16 v0, 0x5b

    if-ne v6, v0, :cond_11

    if-nez v4, :cond_11

    .line 596
    add-int/lit8 v0, v3, 0x1

    .line 598
    :goto_6
    const/16 v3, 0x5d

    if-ne v6, v3, :cond_10

    if-nez v4, :cond_10

    .line 599
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    .line 601
    :goto_7
    const/16 v0, 0x5c

    if-ne v6, v0, :cond_e

    if-eqz v4, :cond_e

    .line 603
    if-nez v5, :cond_d

    move v0, v1

    :goto_8
    move v5, v0

    move v0, v4

    goto :goto_3

    :cond_c
    move v0, v2

    .line 593
    goto :goto_4

    :cond_d
    move v0, v2

    .line 603
    goto :goto_8

    :cond_e
    move v0, v4

    move v5, v2

    .line 605
    goto :goto_3

    .line 609
    :cond_f
    invoke-direct {p0, v7}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    goto/16 :goto_0

    .line 614
    :sswitch_3
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Missing value"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :sswitch_4
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    .line 628
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    .line 631
    :goto_9
    return-object v0

    .line 630
    :sswitch_5
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/server/response/c;->a(I)V

    .line 631
    const/4 v0, 0x0

    goto :goto_9

    :cond_10
    move v3, v0

    goto :goto_7

    :cond_11
    move v0, v3

    goto :goto_6

    :cond_12
    move v4, v0

    goto :goto_5

    :cond_13
    move v9, v3

    move v3, v0

    move v0, v9

    goto/16 :goto_1

    .line 516
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2c -> :sswitch_3
        0x5b -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch

    .line 625
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_4
        0x7d -> :sswitch_5
    .end sparse-switch
.end method

.method private static b(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 806
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 811
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/io/BufferedReader;->mark(I)V

    move v0, v1

    .line 812
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    const/4 v2, -0x1

    if-eq v5, v2, :cond_7

    move v4, v1

    .line 813
    :goto_1
    if-ge v4, v5, :cond_6

    .line 814
    aget-char v6, p1, v4

    .line 815
    invoke-static {v6}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p3, :cond_1

    move v2, v1

    :goto_2
    array-length v7, p3

    if-ge v2, v7, :cond_1

    aget-char v7, p3, v2

    if-ne v7, v6, :cond_0

    move v2, v3

    :goto_3
    if-nez v2, :cond_2

    .line 817
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Unexpected control character while reading string"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v2, v1

    goto :goto_3

    .line 819
    :cond_2
    const/16 v2, 0x22

    if-ne v6, v2, :cond_3

    .line 820
    if-nez v0, :cond_3

    .line 823
    invoke-virtual {p2, p1, v1, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {p0}, Ljava/io/BufferedReader;->reset()V

    .line 825
    add-int/lit8 v0, v4, 0x1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/io/BufferedReader;->skip(J)J

    .line 826
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 829
    :cond_3
    const/16 v2, 0x5c

    if-ne v6, v2, :cond_5

    .line 831
    if-nez v0, :cond_4

    move v0, v3

    .line 813
    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :cond_4
    move v0, v1

    .line 831
    goto :goto_4

    :cond_5
    move v0, v1

    .line 833
    goto :goto_4

    .line 837
    :cond_6
    invoke-virtual {p2, p1, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 838
    array-length v2, p1

    invoke-virtual {p0, v2}, Ljava/io/BufferedReader;->mark(I)V

    goto :goto_0

    .line 840
    :cond_7
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Unexpected EOF while parsing string"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Ljava/io/BufferedReader;[C)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1179
    move v0, v1

    .line 1180
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 1181
    iget-object v2, p0, Lcom/google/android/gms/common/server/response/c;->b:[C

    array-length v3, p2

    sub-int/2addr v3, v0

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/BufferedReader;->read([CII)I

    move-result v3

    .line 1182
    const/4 v2, -0x1

    if-ne v3, v2, :cond_0

    .line 1183
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Unexpected EOF"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    .line 1185
    :goto_1
    if-ge v2, v3, :cond_2

    .line 1186
    add-int v4, v2, v0

    aget-char v4, p2, v4

    iget-object v5, p0, Lcom/google/android/gms/common/server/response/c;->b:[C

    aget-char v5, v5, v2

    if-eq v4, v5, :cond_1

    .line 1187
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Unexpected character"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1185
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1190
    :cond_2
    add-int/2addr v0, v3

    .line 1191
    goto :goto_0

    .line 1192
    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/common/server/response/c;Ljava/io/BufferedReader;)F
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->g(Ljava/io/BufferedReader;)F

    move-result v0

    return v0
.end method

.method private c(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/c;->b:[C

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/c;->d:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/server/response/c;Ljava/io/BufferedReader;)D
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->h(Ljava/io/BufferedReader;)D

    move-result-wide v0

    return-wide v0
.end method

.method private d(Ljava/io/BufferedReader;)I
    .locals 11

    .prologue
    const/16 v9, 0xa

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 872
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/c;->c:[C

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;[C)I

    move-result v6

    .line 873
    if-nez v6, :cond_1

    .line 877
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v7, p0, Lcom/google/android/gms/common/server/response/c;->c:[C

    if-lez v6, :cond_8

    aget-char v1, v7, v0

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_2

    const/high16 v1, -0x80000000

    move v3, v1

    move v5, v4

    move v1, v4

    :goto_1
    if-ge v1, v6, :cond_4

    add-int/lit8 v0, v1, 0x1

    aget-char v1, v7, v1

    invoke-static {v1, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    if-gez v1, :cond_3

    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Unexpected non-digit character"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const v1, -0x7fffffff

    move v3, v1

    move v5, v0

    move v1, v0

    goto :goto_1

    :cond_3
    neg-int v1, v1

    move v10, v0

    move v0, v1

    move v1, v10

    :cond_4
    :goto_2
    if-ge v1, v6, :cond_9

    add-int/lit8 v2, v1, 0x1

    aget-char v1, v7, v1

    invoke-static {v1, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    if-gez v1, :cond_5

    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Unexpected non-digit character"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const v8, -0xccccccc

    if-ge v0, v8, :cond_6

    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Number too large"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    mul-int/lit8 v0, v0, 0xa

    add-int v8, v3, v1

    if-ge v0, v8, :cond_7

    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Number too large"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    sub-int/2addr v0, v1

    move v1, v2

    goto :goto_2

    :cond_8
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "No number to parse"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-eqz v5, :cond_a

    if-gt v1, v4, :cond_0

    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "No digits to parse"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    neg-int v0, v0

    goto :goto_0
.end method

.method private e(Ljava/io/BufferedReader;)J
    .locals 14

    .prologue
    const-wide/16 v0, 0x0

    const/16 v12, 0xa

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 889
    iget-object v2, p0, Lcom/google/android/gms/common/server/response/c;->c:[C

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;[C)I

    move-result v8

    .line 890
    if-nez v8, :cond_1

    .line 894
    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v9, p0, Lcom/google/android/gms/common/server/response/c;->c:[C

    if-lez v8, :cond_8

    aget-char v2, v9, v4

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    const-wide/high16 v2, -0x8000000000000000L

    move-wide v4, v2

    move v7, v6

    move v2, v6

    :goto_1
    if-ge v2, v8, :cond_4

    add-int/lit8 v0, v2, 0x1

    aget-char v1, v9, v2

    invoke-static {v1, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    if-gez v1, :cond_3

    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Unexpected non-digit character"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move v7, v4

    move v13, v4

    move-wide v4, v2

    move v2, v13

    goto :goto_1

    :cond_3
    neg-int v1, v1

    int-to-long v2, v1

    move v13, v0

    move-wide v0, v2

    move v2, v13

    :cond_4
    :goto_2
    if-ge v2, v8, :cond_9

    add-int/lit8 v3, v2, 0x1

    aget-char v2, v9, v2

    invoke-static {v2, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-gez v2, :cond_5

    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Unexpected non-digit character"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-wide v10, -0xcccccccccccccccL

    cmp-long v10, v0, v10

    if-gez v10, :cond_6

    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Number too large"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-wide/16 v10, 0xa

    mul-long/2addr v0, v10

    int-to-long v10, v2

    add-long/2addr v10, v4

    cmp-long v10, v0, v10

    if-gez v10, :cond_7

    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "Number too large"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    int-to-long v10, v2

    sub-long/2addr v0, v10

    move v2, v3

    goto :goto_2

    :cond_8
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "No number to parse"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-eqz v7, :cond_a

    if-gt v2, v6, :cond_0

    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v1, "No digits to parse"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    neg-long v0, v0

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/google/android/gms/common/server/response/c;Ljava/io/BufferedReader;)Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/common/server/response/c;Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->c(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/io/BufferedReader;)Ljava/math/BigInteger;
    .locals 5

    .prologue
    .line 906
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/c;->c:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;[C)I

    move-result v1

    .line 907
    if-nez v1, :cond_0

    .line 909
    const/4 v0, 0x0

    .line 911
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/common/server/response/c;->c:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g(Ljava/io/BufferedReader;)F
    .locals 4

    .prologue
    .line 955
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/c;->c:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;[C)I

    move-result v0

    .line 956
    if-nez v0, :cond_0

    .line 958
    const/4 v0, 0x0

    .line 960
    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/c;->c:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method static synthetic g(Lcom/google/android/gms/common/server/response/c;Ljava/io/BufferedReader;)Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->f(Ljava/io/BufferedReader;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private h(Ljava/io/BufferedReader;)D
    .locals 4

    .prologue
    .line 972
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/c;->c:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;[C)I

    move-result v0

    .line 973
    if-nez v0, :cond_0

    .line 975
    const-wide/16 v0, 0x0

    .line 977
    :goto_0
    return-wide v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/c;->c:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/google/android/gms/common/server/response/c;Ljava/io/BufferedReader;)Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/c;->i(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private i(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;
    .locals 5

    .prologue
    .line 989
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/c;->c:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;[C)I

    move-result v1

    .line 990
    if-nez v1, :cond_0

    .line 992
    const/4 v0, 0x0

    .line 994
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/common/server/response/c;->c:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j(Ljava/io/BufferedReader;)C
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 1079
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/c;->a:[C

    invoke-virtual {p1, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1089
    :goto_0
    return v0

    .line 1083
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/c;->a:[C

    aget-char v1, v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1084
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/c;->a:[C

    invoke-virtual {p1, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1089
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/c;->a:[C

    aget-char v0, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 197
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x400

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/c;->l:Ljava/util/Stack;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/c;->j(Ljava/io/BufferedReader;)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v2, Lcom/google/android/gms/common/server/response/l;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected token: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    :try_start_1
    new-instance v2, Lcom/google/android/gms/common/server/response/l;

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :catchall_0
    move-exception v0

    .line 207
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 210
    :goto_0
    throw v0

    .line 201
    :sswitch_0
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/c;->l:Ljava/util/Stack;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z

    .line 202
    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/server/response/c;->a(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 211
    :goto_2
    return-void

    .line 201
    :sswitch_1
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/c;->l:Ljava/util/Stack;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eq v2, v3, :cond_0

    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v2, "Object array response class must have a single Field"

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :sswitch_2
    new-instance v0, Lcom/google/android/gms/common/server/response/l;

    const-string v2, "No data to parse"

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/l;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 209
    :catch_1
    move-exception v0

    const-string v0, "FastParser"

    const-string v1, "Failed to close reader while parsing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v1, "FastParser"

    const-string v2, "Failed to close reader while parsing."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 3

    .prologue
    .line 222
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 224
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/InputStream;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    const-string v0, "FastParser"

    const-string v1, "Failed to close the input stream while parsing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v1

    .line 227
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 230
    :goto_1
    throw v1

    .line 229
    :catch_1
    move-exception v0

    const-string v0, "FastParser"

    const-string v2, "Failed to close the input stream while parsing."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
