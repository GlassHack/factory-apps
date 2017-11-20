.class public final Lcom/google/android/g/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final e:Lcom/google/android/g/b/d;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/google/android/g/b/d;

    invoke-direct {v0}, Lcom/google/android/g/b/d;-><init>()V

    sput-object v0, Lcom/google/android/g/b/d;->e:Lcom/google/android/g/b/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string v0, "DEFAULT"

    iput-object v0, p0, Lcom/google/android/g/b/d;->a:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/g/b/d;->b:Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/g/b/d;->c:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/g/b/d;->d:Z

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/android/g/b/d;->a:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/google/android/g/b/c;->a()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 88
    array-length v2, v4

    if-nez v2, :cond_0

    new-instance v0, Lcom/google/android/g/b/e;

    const-string v1, "Empty rule"

    invoke-direct {v0, v1}, Lcom/google/android/g/b/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    aget-object v2, v4, v0

    iput-object v2, p0, Lcom/google/android/g/b/d;->b:Ljava/lang/String;

    .line 91
    const/4 v2, 0x0

    move-object v3, v2

    move v2, v0

    move v0, v1

    .line 93
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_3

    .line 94
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 95
    const-string v6, "rewrite"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v6, v0, 0x1

    array-length v7, v4

    if-ge v6, v7, :cond_1

    .line 96
    add-int/lit8 v3, v0, 0x1

    aget-object v3, v4, v3

    .line 97
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 98
    :cond_1
    const-string v2, "block"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    .line 102
    :cond_2
    new-instance v0, Lcom/google/android/g/b/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal rule: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/g/b/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_3
    iput-object v3, p0, Lcom/google/android/g/b/d;->c:Ljava/lang/String;

    .line 108
    iput-boolean v2, p0, Lcom/google/android/g/b/d;->d:Z

    .line 109
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/google/android/g/b/d;->d:Z

    if-eqz v0, :cond_1

    .line 126
    const/4 p1, 0x0

    .line 130
    :cond_0
    :goto_0
    return-object p1

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/google/android/g/b/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/g/b/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/g/b/d;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 136
    check-cast p1, Lcom/google/android/g/b/d;

    iget-object v0, p1, Lcom/google/android/g/b/d;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/g/b/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
