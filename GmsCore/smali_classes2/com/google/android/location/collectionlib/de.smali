.class final Lcom/google/android/location/collectionlib/de;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:J

.field b:I

.field final c:[S

.field final d:[I

.field final synthetic e:Lcom/google/android/location/collectionlib/dd;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/dd;Lcom/google/android/location/collectionlib/cy;)V
    .locals 1

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/location/collectionlib/de;->e:Lcom/google/android/location/collectionlib/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iget-object v0, p2, Lcom/google/android/location/collectionlib/cy;->d:[S

    iput-object v0, p0, Lcom/google/android/location/collectionlib/de;->c:[S

    .line 121
    iget-object v0, p2, Lcom/google/android/location/collectionlib/cy;->d:[S

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/location/collectionlib/de;->d:[I

    .line 122
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/io/PrintWriter;J)V
    .locals 5

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sumOfTimeHeld= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/de;->e:Lcom/google/android/location/collectionlib/dd;

    iget-wide v2, p0, Lcom/google/android/location/collectionlib/de;->a:J

    invoke-static {v1, v2, v3, p3, p4}, Lcom/google/android/location/collectionlib/dd;->a(Lcom/google/android/location/collectionlib/dd;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/collectionlib/de;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/google/android/location/collectionlib/de;->c:[S

    .line 179
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  x < "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-short v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms, count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/collectionlib/de;->d:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  x > "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-short v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms, count "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/collectionlib/de;->d:[I

    array-length v1, v1

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    return-void
.end method
