.class public final Lcom/google/android/gms/wearable/d/d;
.super Ljava/io/PrintWriter;
.source "SourceFile"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Ljava/lang/StringBuilder;

.field private d:[C

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/wearable/d/d;-><init>(Ljava/io/Writer;Ljava/lang/String;B)V

    .line 51
    return-void
.end method

.method private constructor <init>(Ljava/io/Writer;Ljava/lang/String;B)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/d/d;->c:Ljava/lang/StringBuilder;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/d/d;->f:Z

    .line 55
    iput-object p2, p0, Lcom/google/android/gms/wearable/d/d;->a:Ljava/lang/String;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wearable/d/d;->b:I

    .line 57
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/d/d;->f:Z

    if-eqz v0, :cond_1

    .line 123
    iput-boolean v2, p0, Lcom/google/android/gms/wearable/d/d;->f:Z

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/d;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/d;->d:[C

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/d;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/d/d;->d:[C

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/d;->d:[C

    iget-object v1, p0, Lcom/google/android/gms/wearable/d/d;->d:[C

    array-length v1, v1

    invoke-super {p0, v0, v2, v1}, Ljava/io/PrintWriter;->write([CII)V

    .line 131
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/d;->c:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/wearable/d/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/d/d;->d:[C

    .line 62
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/d;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/wearable/d/d;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/d/d;->d:[C

    .line 67
    return-void
.end method

.method public final write([CII)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xa

    const/4 v6, 0x1

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/d;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 80
    add-int v3, p2, p3

    move v0, p2

    .line 85
    :goto_0
    if-ge p2, v3, :cond_3

    .line 86
    add-int/lit8 v1, p2, 0x1

    aget-char v4, p1, p2

    .line 87
    iget v5, p0, Lcom/google/android/gms/wearable/d/d;->e:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/gms/wearable/d/d;->e:I

    .line 88
    if-ne v4, v7, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/google/android/gms/wearable/d/d;->c()V

    .line 90
    sub-int v4, v1, v0

    invoke-super {p0, p1, v0, v4}, Ljava/io/PrintWriter;->write([CII)V

    .line 92
    iput-boolean v6, p0, Lcom/google/android/gms/wearable/d/d;->f:Z

    .line 93
    iput v8, p0, Lcom/google/android/gms/wearable/d/d;->e:I

    move v0, v1

    .line 97
    :cond_0
    iget v4, p0, Lcom/google/android/gms/wearable/d/d;->b:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/google/android/gms/wearable/d/d;->e:I

    iget v5, p0, Lcom/google/android/gms/wearable/d/d;->b:I

    sub-int/2addr v5, v2

    if-lt v4, v5, :cond_2

    .line 98
    iget-boolean v4, p0, Lcom/google/android/gms/wearable/d/d;->f:Z

    if-nez v4, :cond_1

    .line 100
    invoke-super {p0, v7}, Ljava/io/PrintWriter;->write(I)V

    .line 101
    iput-boolean v6, p0, Lcom/google/android/gms/wearable/d/d;->f:Z

    .line 102
    sub-int v4, v1, v0

    iput v4, p0, Lcom/google/android/gms/wearable/d/d;->e:I

    move p2, v1

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/wearable/d/d;->c()V

    .line 106
    sub-int v4, v1, v0

    invoke-super {p0, p1, v0, v4}, Ljava/io/PrintWriter;->write([CII)V

    .line 107
    invoke-super {p0, v7}, Ljava/io/PrintWriter;->write(I)V

    .line 108
    iput-boolean v6, p0, Lcom/google/android/gms/wearable/d/d;->f:Z

    .line 110
    iput v8, p0, Lcom/google/android/gms/wearable/d/d;->e:I

    move v0, v1

    :cond_2
    move p2, v1

    .line 113
    goto :goto_0

    .line 115
    :cond_3
    if-eq v0, p2, :cond_4

    .line 116
    invoke-direct {p0}, Lcom/google/android/gms/wearable/d/d;->c()V

    .line 117
    sub-int v1, p2, v0

    invoke-super {p0, p1, v0, v1}, Ljava/io/PrintWriter;->write([CII)V

    .line 119
    :cond_4
    return-void
.end method
