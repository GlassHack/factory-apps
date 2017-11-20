.class public final Lcom/google/j/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 24
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "application/atom+xml"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "application/binary"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "image/jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "image/png"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "multipart/alternative"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "multipart/mixed"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "multipart/related"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "text/plain"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "text/xml"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/j/b/g;->a:[Ljava/lang/String;

    .line 36
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/j/b/g;->b:[I

    .line 51
    return-void

    .line 36
    :array_0
    .array-data 4
        0x6161
        0x6162
        0x696a
        0x6970
        0x6d61
        0x6d6d
        0x6d72
        0x7470
        0x7478
    .end array-data
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/google/j/b/g;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 77
    sget-object v1, Lcom/google/j/b/g;->b:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 78
    sget-object v1, Lcom/google/j/b/g;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 82
    :goto_1
    return-object v0

    .line 76
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/io/DataInputStream;)Ljava/util/Hashtable;
    .locals 5

    .prologue
    .line 171
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 174
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    and-int/lit16 v2, v0, 0xff

    .line 176
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 177
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-object v1
.end method

.method public static a(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 96
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 98
    if-ltz v0, :cond_0

    .line 102
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 103
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move v2, v3

    .line 110
    :goto_1
    sget-object v4, Lcom/google/j/b/g;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    sget-object v4, Lcom/google/j/b/g;->a:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v1, Lcom/google/j/b/g;->b:[I

    aget v1, v1, v2

    .line 112
    :goto_2
    if-lez v1, :cond_3

    .line 114
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 115
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 122
    :goto_3
    return-void

    .line 107
    :cond_0
    const-string v0, ""

    move-object v1, p1

    goto :goto_0

    .line 110
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    .line 119
    :cond_3
    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 120
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static a(Ljava/io/DataOutputStream;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 133
    .line 136
    if-eqz p1, :cond_3

    .line 137
    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v1

    .line 139
    :goto_0
    if-eqz p2, :cond_0

    .line 140
    const/4 v0, 0x1

    .line 146
    :cond_0
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 147
    if-eqz p2, :cond_1

    .line 148
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 151
    :cond_1
    if-eqz p1, :cond_2

    .line 152
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 153
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 156
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    .line 160
    :cond_2
    return-void

    :cond_3
    move v1, v0

    goto :goto_0
.end method
