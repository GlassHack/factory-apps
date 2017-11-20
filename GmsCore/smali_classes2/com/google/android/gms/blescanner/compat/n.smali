.class public final Lcom/google/android/gms/blescanner/compat/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/List;

.field final b:Landroid/util/SparseArray;

.field final c:Ljava/util/Map;

.field final d:Ljava/lang/String;

.field public final e:[B

.field private final f:I

.field private final g:I


# direct methods
.method private constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/google/android/gms/blescanner/compat/n;->a:Ljava/util/List;

    .line 148
    iput-object p2, p0, Lcom/google/android/gms/blescanner/compat/n;->b:Landroid/util/SparseArray;

    .line 149
    iput-object p3, p0, Lcom/google/android/gms/blescanner/compat/n;->c:Ljava/util/Map;

    .line 150
    iput-object p6, p0, Lcom/google/android/gms/blescanner/compat/n;->d:Ljava/lang/String;

    .line 151
    iput p4, p0, Lcom/google/android/gms/blescanner/compat/n;->f:I

    .line 152
    iput p5, p0, Lcom/google/android/gms/blescanner/compat/n;->g:I

    .line 153
    iput-object p7, p0, Lcom/google/android/gms/blescanner/compat/n;->e:[B

    .line 154
    return-void
.end method

.method private static a([BIIILjava/util/List;)I
    .locals 1

    .prologue
    .line 269
    :goto_0
    if-lez p2, :cond_0

    .line 270
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/blescanner/compat/n;->a([BII)[B

    move-result-object v0

    .line 272
    invoke-static {v0}, Lcom/google/android/gms/blescanner/compat/b;->a([B)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    sub-int/2addr p2, p3

    .line 274
    add-int/2addr p1, p3

    .line 275
    goto :goto_0

    .line 276
    :cond_0
    return p1
.end method

.method public static a([B)Lcom/google/android/gms/blescanner/compat/n;
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 168
    if-nez p0, :cond_0

    move-object v0, v8

    .line 254
    :goto_0
    return-object v0

    .line 173
    :cond_0
    const/4 v4, -0x1

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    const/high16 v5, -0x80000000

    .line 178
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 179
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v6, v8

    move v0, v9

    .line 182
    :goto_1
    :try_start_0
    array-length v7, p0

    if-ge v0, v7, :cond_1

    .line 184
    add-int/lit8 v7, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 185
    if-eqz v0, :cond_1

    .line 186
    add-int/lit8 v0, v0, -0x1

    .line 191
    add-int/lit8 v10, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    .line 192
    sparse-switch v7, :sswitch_data_0

    .line 239
    :goto_2
    add-int/2addr v0, v10

    .line 245
    goto :goto_1

    .line 194
    :sswitch_0
    aget-byte v4, p0, v10

    and-int/lit16 v4, v4, 0xff

    .line 195
    goto :goto_2

    .line 198
    :sswitch_1
    const/4 v7, 0x2

    invoke-static {p0, v10, v0, v7, v1}, Lcom/google/android/gms/blescanner/compat/n;->a([BIIILjava/util/List;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 253
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to parse scan record: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/google/android/gms/blescanner/b/c;->a(Ljava/lang/String;[Ljava/lang/Exception;)V

    move-object v0, v8

    .line 254
    goto :goto_0

    .line 203
    :sswitch_2
    const/4 v7, 0x4

    :try_start_1
    invoke-static {p0, v10, v0, v7, v1}, Lcom/google/android/gms/blescanner/compat/n;->a([BIIILjava/util/List;)I

    goto :goto_2

    .line 208
    :sswitch_3
    const/16 v7, 0x10

    invoke-static {p0, v10, v0, v7, v1}, Lcom/google/android/gms/blescanner/compat/n;->a([BIIILjava/util/List;)I

    goto :goto_2

    .line 213
    :sswitch_4
    new-instance v6, Ljava/lang/String;

    invoke-static {p0, v10, v0}, Lcom/google/android/gms/blescanner/compat/n;->a([BII)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    .line 217
    :sswitch_5
    aget-byte v5, p0, v10

    goto :goto_2

    .line 222
    :sswitch_6
    const/4 v7, 0x2

    invoke-static {p0, v10, v7}, Lcom/google/android/gms/blescanner/compat/n;->a([BII)[B

    move-result-object v7

    .line 225
    invoke-static {v7}, Lcom/google/android/gms/blescanner/compat/b;->a([B)Landroid/os/ParcelUuid;

    move-result-object v7

    .line 227
    add-int/lit8 v11, v10, 0x2

    add-int/lit8 v12, v0, -0x2

    invoke-static {p0, v11, v12}, Lcom/google/android/gms/blescanner/compat/n;->a([BII)[B

    move-result-object v11

    .line 229
    invoke-interface {v3, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 234
    :sswitch_7
    add-int/lit8 v7, v10, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    aget-byte v11, p0, v10

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v7, v11

    .line 236
    add-int/lit8 v11, v10, 0x2

    add-int/lit8 v12, v0, -0x2

    invoke-static {p0, v11, v12}, Lcom/google/android/gms/blescanner/compat/n;->a([BII)[B

    move-result-object v11

    .line 238
    invoke-virtual {v2, v7, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 247
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, v8

    .line 250
    :cond_2
    new-instance v0, Lcom/google/android/gms/blescanner/compat/n;

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/blescanner/compat/n;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 192
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0x16 -> :sswitch_6
        0xff -> :sswitch_7
    .end sparse-switch
.end method

.method private static a([BII)[B
    .locals 2

    .prologue
    .line 281
    new-array v0, p2, [B

    .line 282
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScanRecord [mAdvertiseFlags="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/blescanner/compat/n;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/n;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/n;->b:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/google/android/gms/blescanner/compat/r;->a(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/n;->c:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/android/gms/blescanner/compat/r;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/blescanner/compat/n;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
