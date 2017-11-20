.class public final Lcom/google/android/location/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/google/android/location/g/a;->a:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/g/a;->b:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method public static a(Ljava/io/DataInputStream;)Lcom/google/android/location/g/a;
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 120
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 121
    new-instance v5, Lcom/google/android/location/g/a;

    invoke-direct {v5, v0}, Lcom/google/android/location/g/a;-><init>(I)V

    move v3, v1

    .line 122
    :goto_0
    if-ge v3, v4, :cond_3

    .line 123
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    new-instance v7, Lcom/google/android/location/g/b;

    invoke-direct {v7, v6}, Lcom/google/android/location/g/b;-><init>(I)V

    iput v0, v7, Lcom/google/android/location/g/b;->b:I

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {}, Lcom/google/android/location/g/d;->values()[Lcom/google/android/location/g/d;

    move-result-object v8

    aget-object v0, v8, v0

    sget-object v8, Lcom/google/android/location/g/d;->a:Lcom/google/android/location/g/d;

    if-ne v0, v8, :cond_1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    new-instance v9, Lcom/google/android/location/g/e;

    invoke-direct {v9, v8}, Lcom/google/android/location/g/e;-><init>(I)V

    move v0, v1

    :goto_2
    if-ge v0, v8, :cond_0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v11

    new-instance v12, Lcom/google/android/location/g/f;

    invoke-direct {v12, v10, v11}, Lcom/google/android/location/g/f;-><init>(IF)V

    iget-object v10, v9, Lcom/google/android/location/g/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/google/android/location/g/c;

    invoke-direct {v0, v9}, Lcom/google/android/location/g/c;-><init>(Lcom/google/android/location/g/e;)V

    :goto_3
    iget-object v8, v7, Lcom/google/android/location/g/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    new-instance v0, Lcom/google/android/location/g/c;

    invoke-direct {v0, v8, v9, v10, v11}, Lcom/google/android/location/g/c;-><init>(IFII)V

    goto :goto_3

    .line 124
    :cond_2
    iget-object v0, v5, Lcom/google/android/location/g/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 126
    :cond_3
    return-object v5
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    if-ne p0, p1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    instance-of v2, p1, Lcom/google/android/location/g/a;

    if-nez v2, :cond_2

    move v0, v1

    .line 136
    goto :goto_0

    .line 139
    :cond_2
    check-cast p1, Lcom/google/android/location/g/a;

    .line 141
    iget v2, p0, Lcom/google/android/location/g/a;->a:I

    iget v3, p1, Lcom/google/android/location/g/a;->a:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/location/g/a;->b:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/location/g/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lcom/google/android/location/g/a;->a:I

    add-int/lit16 v0, v0, 0x20f

    .line 149
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/g/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/location/g/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tree "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v2, p0, Lcom/google/android/location/g/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
