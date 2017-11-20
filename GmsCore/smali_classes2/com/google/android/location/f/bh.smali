.class public Lcom/google/android/location/f/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:J

.field private final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(JLjava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/google/android/location/f/bh;->a:J

    .line 35
    iput-object p3, p0, Lcom/google/android/location/f/bh;->b:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method public static a(Ljava/io/PrintWriter;Lcom/google/android/location/f/bh;)V
    .locals 1

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/location/f/bh;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/google/android/location/f/bh;)V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/location/f/bh;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)Lcom/google/android/location/f/bb;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/location/f/bh;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/bb;

    return-object v0
.end method

.method public final a(JZ)Lcom/google/g/a/b/b/a;
    .locals 13

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/location/f/bh;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    .line 50
    :cond_0
    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v0, Lcom/google/android/location/n/a;->h:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v0}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 51
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/location/f/bh;->a:J

    add-long/2addr v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 53
    const/16 v0, 0x19

    iget-object v2, p0, Lcom/google/android/location/f/bh;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 54
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    .line 55
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/google/android/location/f/bh;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/bb;

    iget-wide v6, p0, Lcom/google/android/location/f/bh;->a:J

    new-instance v5, Lcom/google/g/a/b/b/a;

    sget-object v8, Lcom/google/android/location/n/a;->f:Lcom/google/g/a/b/b/c;

    invoke-direct {v5, v8}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v8, 0x1

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    const/16 v8, 0x8

    iget-wide v10, v0, Lcom/google/android/location/f/bb;->b:J

    invoke-virtual {v5, v8, v10, v11}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    const/4 v8, 0x4

    iget v9, v0, Lcom/google/android/location/f/bb;->d:I

    invoke-virtual {v5, v8, v9}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    iget-short v8, v0, Lcom/google/android/location/f/bb;->e:S

    invoke-static {v5, v8}, Lcom/google/android/location/f/bf;->a(Lcom/google/g/a/b/b/a;I)V

    if-eqz p3, :cond_1

    const/4 v8, 0x2

    iget-object v9, v0, Lcom/google/android/location/f/bb;->c:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    :cond_1
    iget-wide v8, v0, Lcom/google/android/location/f/k;->a:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    const/16 v8, 0xc

    iget-wide v10, v0, Lcom/google/android/location/f/k;->a:J

    sub-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v5, v8, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    :cond_2
    invoke-virtual {v1, v4, v5}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 54
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 59
    goto :goto_0
.end method

.method public final a(Lcom/google/android/location/f/bh;)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 129
    iget-object v1, p0, Lcom/google/android/location/f/bh;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 131
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/google/android/location/f/bh;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v2, v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 138
    :goto_1
    if-ge v1, v2, :cond_2

    .line 139
    invoke-virtual {p0, v1}, Lcom/google/android/location/f/bh;->a(I)Lcom/google/android/location/f/bb;

    move-result-object v3

    .line 140
    invoke-virtual {p1, v1}, Lcom/google/android/location/f/bh;->a(I)Lcom/google/android/location/f/bb;

    move-result-object v4

    .line 142
    iget-wide v6, v3, Lcom/google/android/location/f/bb;->a:J

    iget-wide v8, v4, Lcom/google/android/location/f/bb;->a:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    iget-wide v6, v3, Lcom/google/android/location/f/bb;->b:J

    iget-wide v8, v4, Lcom/google/android/location/f/bb;->b:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    iget v3, v3, Lcom/google/android/location/f/bb;->d:I

    iget v4, v4, Lcom/google/android/location/f/bb;->d:I

    if-ne v3, v4, :cond_0

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 19
    check-cast p1, Lcom/google/android/location/f/bh;

    iget-wide v0, p0, Lcom/google/android/location/f/bh;->a:J

    iget-wide v2, p1, Lcom/google/android/location/f/bh;->a:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    if-ne p0, p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    instance-of v2, p1, Lcom/google/android/location/f/bh;

    if-nez v2, :cond_2

    move v0, v1

    .line 102
    goto :goto_0

    .line 104
    :cond_2
    check-cast p1, Lcom/google/android/location/f/bh;

    .line 105
    iget-wide v2, p0, Lcom/google/android/location/f/bh;->a:J

    iget-wide v4, p1, Lcom/google/android/location/f/bh;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/location/f/bh;->b:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/location/f/bh;->b:Ljava/util/ArrayList;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    move v2, v0

    :goto_1
    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/location/f/bh;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/f/bh;->b:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    const-string v0, "WifiScan [deliveryTime="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    iget-wide v2, p0, Lcom/google/android/location/f/bh;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 67
    const-string v0, ", devices=["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    iget-object v0, p0, Lcom/google/android/location/f/bh;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/bb;

    .line 69
    invoke-virtual {v0}, Lcom/google/android/location/f/bb;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 72
    :cond_0
    const-string v0, "]]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
