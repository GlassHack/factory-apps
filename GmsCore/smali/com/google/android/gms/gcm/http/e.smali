.class public final Lcom/google/android/gms/gcm/http/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final e:Lcom/google/android/gms/gcm/http/e;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/google/android/gms/gcm/http/e;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/http/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/gcm/http/e;->e:Lcom/google/android/gms/gcm/http/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-string v0, "DEFAULT"

    iput-object v0, p0, Lcom/google/android/gms/gcm/http/e;->a:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/gcm/http/e;->b:Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/gcm/http/e;->c:Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/http/e;->d:Z

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/android/gms/gcm/http/e;->a:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/google/android/gms/gcm/http/d;->a()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 89
    array-length v2, v4

    if-nez v2, :cond_0

    new-instance v0, Lcom/google/android/gms/gcm/http/f;

    const-string v1, "Empty rule"

    invoke-direct {v0, v1}, Lcom/google/android/gms/gcm/http/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    aget-object v2, v4, v0

    iput-object v2, p0, Lcom/google/android/gms/gcm/http/e;->b:Ljava/lang/String;

    .line 92
    const/4 v2, 0x0

    move-object v3, v2

    move v2, v0

    move v0, v1

    .line 94
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_3

    .line 95
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 96
    const-string v6, "rewrite"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v6, v0, 0x1

    array-length v7, v4

    if-ge v6, v7, :cond_1

    .line 97
    add-int/lit8 v3, v0, 0x1

    aget-object v3, v4, v3

    .line 98
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 99
    :cond_1
    const-string v2, "block"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    .line 104
    :cond_2
    new-instance v0, Lcom/google/android/gms/gcm/http/f;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal rule: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/gcm/http/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_3
    iput-object v3, p0, Lcom/google/android/gms/gcm/http/e;->c:Ljava/lang/String;

    .line 110
    iput-boolean v2, p0, Lcom/google/android/gms/gcm/http/e;->d:Z

    .line 111
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/http/e;->d:Z

    if-eqz v0, :cond_1

    .line 128
    const/4 p1, 0x0

    .line 132
    :cond_0
    :goto_0
    return-object p1

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/http/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/gcm/http/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/gcm/http/e;->b:Ljava/lang/String;

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
    .line 138
    check-cast p1, Lcom/google/android/gms/gcm/http/e;

    iget-object v0, p1, Lcom/google/android/gms/gcm/http/e;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/gcm/http/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
