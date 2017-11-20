.class public final Lcom/google/b/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/util/Map;

.field static b:Ljava/util/Map;

.field private static c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/b/a/f;->a:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/b/a/f;->b:Ljava/util/Map;

    .line 89
    new-instance v0, Lcom/google/b/a/a/j;

    invoke-direct {v0}, Lcom/google/b/a/a/j;-><init>()V

    invoke-static {v2, v0}, Lcom/google/b/a/f;->a(BLcom/google/protobuf/a/f;)V

    .line 90
    new-instance v0, Lcom/google/b/a/a/h;

    invoke-direct {v0}, Lcom/google/b/a/a/h;-><init>()V

    invoke-static {v3, v0}, Lcom/google/b/a/f;->a(BLcom/google/protobuf/a/f;)V

    .line 91
    const/4 v0, 0x4

    new-instance v1, Lcom/google/b/a/a/d;

    invoke-direct {v1}, Lcom/google/b/a/a/d;-><init>()V

    invoke-static {v0, v1}, Lcom/google/b/a/f;->a(BLcom/google/protobuf/a/f;)V

    .line 92
    const/16 v0, 0xa

    new-instance v1, Lcom/google/b/a/a/t;

    invoke-direct {v1}, Lcom/google/b/a/a/t;-><init>()V

    invoke-static {v0, v1}, Lcom/google/b/a/f;->a(BLcom/google/protobuf/a/f;)V

    .line 93
    const/4 v0, 0x3

    new-instance v1, Lcom/google/b/a/a/n;

    invoke-direct {v1}, Lcom/google/b/a/a/n;-><init>()V

    invoke-static {v0, v1}, Lcom/google/b/a/f;->a(BLcom/google/protobuf/a/f;)V

    .line 94
    const/4 v0, 0x7

    new-instance v1, Lcom/google/b/a/a/l;

    invoke-direct {v1}, Lcom/google/b/a/a/l;-><init>()V

    invoke-static {v0, v1}, Lcom/google/b/a/f;->a(BLcom/google/protobuf/a/f;)V

    .line 95
    const/16 v0, 0x8

    new-instance v1, Lcom/google/b/a/a/e;

    invoke-direct {v1}, Lcom/google/b/a/a/e;-><init>()V

    invoke-static {v0, v1}, Lcom/google/b/a/f;->a(BLcom/google/protobuf/a/f;)V

    .line 97
    const/16 v0, 0x10

    new-instance v1, Lcom/google/b/a/a/q;

    invoke-direct {v1}, Lcom/google/b/a/a/q;-><init>()V

    invoke-static {v0, v1}, Lcom/google/b/a/f;->a(BLcom/google/protobuf/a/f;)V

    .line 100
    const/4 v0, 0x2

    new-instance v1, Lcom/google/b/a/a/m;

    invoke-direct {v1}, Lcom/google/b/a/a/m;-><init>()V

    invoke-static {v0, v1}, Lcom/google/b/a/f;->a(BLcom/google/protobuf/a/f;)V

    .line 233
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "authToken"

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/b/a/f;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/google/protobuf/a/f;)B
    .locals 2

    .prologue
    .line 113
    if-nez p0, :cond_0

    .line 114
    const/4 v0, -0x1

    .line 120
    :goto_0
    return v0

    .line 116
    :cond_0
    sget-object v0, Lcom/google/b/a/f;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 117
    if-nez v0, :cond_1

    .line 118
    const/4 v0, -0x2

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    goto :goto_0
.end method

.method public static a()Lcom/google/b/a/a/l;
    .locals 3

    .prologue
    .line 371
    new-instance v0, Lcom/google/b/a/a/l;

    invoke-direct {v0}, Lcom/google/b/a/a/l;-><init>()V

    .line 372
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/b/a/a/l;->a(I)Lcom/google/b/a/a/l;

    .line 373
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/b/a/a/l;->a(Ljava/lang/String;)Lcom/google/b/a/a/l;

    .line 375
    new-instance v1, Lcom/google/b/a/a/s;

    invoke-direct {v1}, Lcom/google/b/a/a/s;-><init>()V

    .line 376
    new-instance v1, Lcom/google/b/a/a/g;

    invoke-direct {v1}, Lcom/google/b/a/a/g;-><init>()V

    .line 377
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/google/b/a/a/g;->a(I)Lcom/google/b/a/a/g;

    .line 378
    sget-object v2, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {v1, v2}, Lcom/google/b/a/a/g;->a(Lcom/google/protobuf/a/a;)Lcom/google/b/a/a/g;

    .line 380
    invoke-virtual {v0, v1}, Lcom/google/b/a/a/l;->a(Lcom/google/b/a/a/g;)Lcom/google/b/a/a/l;

    .line 381
    return-object v0
.end method

.method public static a(B[B)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/google/b/a/f;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/a/f;

    .line 126
    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown tag"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 130
    const/4 v1, 0x0

    .line 132
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/a/f;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    :goto_0
    array-length v1, p1

    if-lez v1, :cond_1

    .line 139
    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;

    .line 141
    :cond_1
    return-object v0

    .line 137
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/google/protobuf/a/f;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-static {v0, p1}, Lcom/google/b/a/f;->b(Ljava/lang/StringBuilder;Lcom/google/protobuf/a/f;)V

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(BLcom/google/protobuf/a/f;)V
    .locals 3

    .prologue
    .line 104
    sget-object v0, Lcom/google/b/a/f;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/google/b/a/f;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method static a(Lcom/google/protobuf/a/f;I)V
    .locals 1

    .prologue
    .line 220
    instance-of v0, p0, Lcom/google/b/a/a/l;

    if-eqz v0, :cond_1

    .line 221
    check-cast p0, Lcom/google/b/a/a/l;

    invoke-virtual {p0, p1}, Lcom/google/b/a/a/l;->b(I)Lcom/google/b/a/a/l;

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    instance-of v0, p0, Lcom/google/b/a/a/j;

    if-eqz v0, :cond_2

    .line 223
    check-cast p0, Lcom/google/b/a/a/j;

    invoke-virtual {p0, p1}, Lcom/google/b/a/a/j;->a(I)Lcom/google/b/a/a/j;

    goto :goto_0

    .line 224
    :cond_2
    instance-of v0, p0, Lcom/google/b/a/a/h;

    if-eqz v0, :cond_3

    .line 225
    check-cast p0, Lcom/google/b/a/a/h;

    invoke-virtual {p0, p1}, Lcom/google/b/a/a/h;->a(I)Lcom/google/b/a/a/h;

    goto :goto_0

    .line 226
    :cond_3
    instance-of v0, p0, Lcom/google/b/a/a/e;

    if-eqz v0, :cond_0

    .line 227
    check-cast p0, Lcom/google/b/a/a/e;

    invoke-virtual {p0, p1}, Lcom/google/b/a/a/e;->b(I)Lcom/google/b/a/a/e;

    goto :goto_0
.end method

.method public static a(Lcom/google/protobuf/a/f;J)V
    .locals 1

    .prologue
    .line 194
    instance-of v0, p0, Lcom/google/b/a/a/l;

    if-eqz v0, :cond_1

    .line 195
    check-cast p0, Lcom/google/b/a/a/l;

    invoke-virtual {p0, p1, p2}, Lcom/google/b/a/a/l;->a(J)Lcom/google/b/a/a/l;

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    instance-of v0, p0, Lcom/google/b/a/a/m;

    if-eqz v0, :cond_2

    .line 197
    check-cast p0, Lcom/google/b/a/a/m;

    invoke-virtual {p0, p1, p2}, Lcom/google/b/a/a/m;->b(J)Lcom/google/b/a/a/m;

    goto :goto_0

    .line 198
    :cond_2
    instance-of v0, p0, Lcom/google/b/a/a/j;

    if-eqz v0, :cond_3

    .line 199
    check-cast p0, Lcom/google/b/a/a/j;

    invoke-virtual {p0, p1, p2}, Lcom/google/b/a/a/j;->a(J)Lcom/google/b/a/a/j;

    goto :goto_0

    .line 200
    :cond_3
    instance-of v0, p0, Lcom/google/b/a/a/h;

    if-eqz v0, :cond_4

    .line 201
    check-cast p0, Lcom/google/b/a/a/h;

    invoke-virtual {p0, p1, p2}, Lcom/google/b/a/a/h;->a(J)Lcom/google/b/a/a/h;

    goto :goto_0

    .line 202
    :cond_4
    instance-of v0, p0, Lcom/google/b/a/a/e;

    if-eqz v0, :cond_0

    .line 203
    check-cast p0, Lcom/google/b/a/a/e;

    invoke-virtual {p0, p1, p2}, Lcom/google/b/a/a/e;->c(J)Lcom/google/b/a/a/e;

    goto :goto_0
.end method

.method public static a(Lcom/google/protobuf/a/f;Lcom/google/b/a/a/c;)V
    .locals 1

    .prologue
    .line 210
    instance-of v0, p0, Lcom/google/b/a/a/m;

    if-eqz v0, :cond_1

    .line 211
    check-cast p0, Lcom/google/b/a/a/m;

    invoke-virtual {p0, p1}, Lcom/google/b/a/a/m;->a(Lcom/google/b/a/a/c;)Lcom/google/b/a/a/m;

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    instance-of v0, p0, Lcom/google/b/a/a/j;

    if-eqz v0, :cond_2

    .line 213
    check-cast p0, Lcom/google/b/a/a/j;

    invoke-virtual {p0, p1}, Lcom/google/b/a/a/j;->a(Lcom/google/b/a/a/c;)Lcom/google/b/a/a/j;

    goto :goto_0

    .line 214
    :cond_2
    instance-of v0, p0, Lcom/google/b/a/a/e;

    if-eqz v0, :cond_0

    .line 215
    check-cast p0, Lcom/google/b/a/a/e;

    invoke-virtual {p0, p1}, Lcom/google/b/a/a/e;->a(Lcom/google/b/a/a/c;)Lcom/google/b/a/a/e;

    goto :goto_0
.end method

.method public static a(Lcom/google/protobuf/a/f;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 157
    instance-of v0, p0, Lcom/google/b/a/a/l;

    if-eqz v0, :cond_1

    .line 158
    check-cast p0, Lcom/google/b/a/a/l;

    invoke-virtual {p0, p1}, Lcom/google/b/a/a/l;->b(Ljava/lang/String;)Lcom/google/b/a/a/l;

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    instance-of v0, p0, Lcom/google/b/a/a/e;

    if-eqz v0, :cond_0

    .line 160
    check-cast p0, Lcom/google/b/a/a/e;

    invoke-virtual {p0, p1}, Lcom/google/b/a/a/e;->f(Ljava/lang/String;)Lcom/google/b/a/a/e;

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;Lcom/google/protobuf/a/f;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 246
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 250
    :try_start_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    .line 252
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 253
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 254
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 260
    instance-of v6, v0, Ljava/lang/Boolean;

    if-nez v6, :cond_0

    .line 261
    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 264
    sget-object v6, Lcom/google/b/a/f;->c:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 265
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v6, 0x3d

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    instance-of v1, v0, Lcom/google/protobuf/a/f;

    if-eqz v1, :cond_1

    .line 270
    check-cast v0, Lcom/google/protobuf/a/f;

    invoke-static {p0, v0}, Lcom/google/b/a/f;->b(Ljava/lang/StringBuilder;Lcom/google/protobuf/a/f;)V

    .line 282
    :goto_1
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 271
    :cond_1
    instance-of v1, v0, [Lcom/google/protobuf/a/f;

    if-eqz v1, :cond_3

    .line 272
    check-cast v0, [Lcom/google/protobuf/a/f;

    .line 273
    const-string v1, "["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    array-length v6, v0

    move v1, v2

    :goto_2
    if-ge v1, v6, :cond_2

    aget-object v7, v0, v1

    .line 275
    invoke-static {p0, v7}, Lcom/google/b/a/f;->b(Ljava/lang/StringBuilder;Lcom/google/protobuf/a/f;)V

    .line 276
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 278
    :cond_2
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 285
    :catch_0
    move-exception v0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error generating: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :goto_3
    return-void

    .line 280
    :cond_3
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 284
    :cond_4
    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public static b(Lcom/google/protobuf/a/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    instance-of v0, p0, Lcom/google/b/a/a/l;

    if-eqz v0, :cond_0

    .line 149
    check-cast p0, Lcom/google/b/a/a/l;

    iget-object v0, p0, Lcom/google/b/a/a/l;->c:Ljava/lang/String;

    .line 153
    :goto_0
    return-object v0

    .line 150
    :cond_0
    instance-of v0, p0, Lcom/google/b/a/a/e;

    if-eqz v0, :cond_1

    .line 151
    check-cast p0, Lcom/google/b/a/a/e;

    iget-object v0, p0, Lcom/google/b/a/a/e;->g:Ljava/lang/String;

    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/StringBuilder;Lcom/google/protobuf/a/f;)V
    .locals 6

    .prologue
    .line 292
    invoke-static {p1}, Lcom/google/b/a/f;->a(Lcom/google/protobuf/a/f;)B

    move-result v0

    .line 293
    packed-switch v0, :pswitch_data_0

    .line 352
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Packet: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-static {p0, p1}, Lcom/google/b/a/f;->a(Ljava/lang/StringBuilder;Lcom/google/protobuf/a/f;)V

    .line 356
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/google/b/a/f;->c(Lcom/google/protobuf/a/f;)I

    move-result v0

    .line 357
    if-lez v0, :cond_1

    .line 358
    const-string v1, "lastStream="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    :cond_1
    invoke-static {p1}, Lcom/google/b/a/f;->c(Lcom/google/protobuf/a/f;)I

    move-result v0

    .line 361
    if-eqz v0, :cond_2

    .line 362
    const-string v1, "status="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    :cond_2
    return-void

    .line 295
    :pswitch_1
    const-string v0, "LoginRequest: ack("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    .line 296
    check-cast v0, Lcom/google/b/a/a/m;

    .line 297
    iget-object v1, v0, Lcom/google/b/a/a/m;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 298
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 300
    :cond_3
    iget-object v0, v0, Lcom/google/b/a/a/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/r;

    .line 302
    iget-object v2, v0, Lcom/google/b/a/a/r;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/google/b/a/a/r;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 305
    :cond_4
    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    move-object v0, p1

    .line 309
    check-cast v0, Lcom/google/b/a/a/n;

    .line 310
    iget-object v0, v0, Lcom/google/b/a/a/n;->a:Lcom/google/b/a/a/f;

    if-eqz v0, :cond_5

    .line 311
    const-string v0, "LoginResponse ERROR "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-static {p0, p1}, Lcom/google/b/a/f;->a(Ljava/lang/StringBuilder;Lcom/google/protobuf/a/f;)V

    goto/16 :goto_0

    .line 314
    :cond_5
    const-string v0, "LoginResponse OK"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_3
    move-object v0, p1

    .line 319
    check-cast v0, Lcom/google/b/a/a/e;

    .line 320
    const-string v1, "DataMessage: app="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/b/a/a/e;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/b/a/a/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-wide v2, v0, Lcom/google/b/a/a/e;->i:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 329
    const-string v1, " user="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/b/a/a/e;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 335
    :pswitch_4
    const-string v1, "Heartbeat "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_5
    move-object v0, p1

    .line 339
    check-cast v0, Lcom/google/b/a/a/l;

    .line 340
    iget v0, v0, Lcom/google/b/a/a/l;->a:I

    .line 341
    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    .line 342
    const-string v0, "StreamAck"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_6
    :goto_3
    const-string v0, "IQ: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-static {p0, p1}, Lcom/google/b/a/f;->a(Ljava/lang/StringBuilder;Lcom/google/protobuf/a/f;)V

    goto/16 :goto_0

    .line 343
    :cond_7
    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    .line 344
    const-string v0, "SelectiveAck "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-static {p0, p1}, Lcom/google/b/a/f;->a(Ljava/lang/StringBuilder;Lcom/google/protobuf/a/f;)V

    goto :goto_3

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method static c(Lcom/google/protobuf/a/f;)I
    .locals 1

    .prologue
    .line 166
    instance-of v0, p0, Lcom/google/b/a/a/l;

    if-eqz v0, :cond_0

    .line 167
    check-cast p0, Lcom/google/b/a/a/l;

    iget v0, p0, Lcom/google/b/a/a/l;->d:I

    .line 175
    :goto_0
    return v0

    .line 168
    :cond_0
    instance-of v0, p0, Lcom/google/b/a/a/e;

    if-eqz v0, :cond_1

    .line 169
    check-cast p0, Lcom/google/b/a/a/e;

    iget v0, p0, Lcom/google/b/a/a/e;->h:I

    goto :goto_0

    .line 170
    :cond_1
    instance-of v0, p0, Lcom/google/b/a/a/j;

    if-eqz v0, :cond_2

    .line 171
    check-cast p0, Lcom/google/b/a/a/j;

    iget v0, p0, Lcom/google/b/a/a/j;->a:I

    goto :goto_0

    .line 172
    :cond_2
    instance-of v0, p0, Lcom/google/b/a/a/h;

    if-eqz v0, :cond_3

    .line 173
    check-cast p0, Lcom/google/b/a/a/h;

    iget v0, p0, Lcom/google/b/a/a/h;->a:I

    goto :goto_0

    .line 175
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method
