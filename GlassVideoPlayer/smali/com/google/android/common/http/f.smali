.class public final Lcom/google/android/common/http/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final e:Lcom/google/android/common/http/f;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/common/http/f;

    invoke-direct {v0}, Lcom/google/android/common/http/f;-><init>()V

    sput-object v0, Lcom/google/android/common/http/f;->e:Lcom/google/android/common/http/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-string v0, "DEFAULT"

    iput-object v0, p0, Lcom/google/android/common/http/f;->a:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/common/http/f;->b:Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/common/http/f;->c:Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/http/f;->d:Z

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/common/http/f;->a:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/google/android/common/http/UrlRules;->a()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 84
    array-length v0, v4

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/common/http/UrlRules$RuleFormatException;

    const-string v1, "Empty rule"

    invoke-direct {v0, v1}, Lcom/google/android/common/http/UrlRules$RuleFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    aget-object v0, v4, v1

    iput-object v0, p0, Lcom/google/android/common/http/f;->b:Ljava/lang/String;

    .line 87
    const/4 v3, 0x0

    move v0, v2

    .line 89
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_3

    .line 90
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 91
    const-string v6, "rewrite"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v6, v0, 0x1

    array-length v7, v4

    if-ge v6, v7, :cond_1

    .line 92
    add-int/lit8 v3, v0, 0x1

    aget-object v3, v4, v3

    .line 93
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 94
    :cond_1
    const-string v1, "block"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 98
    :cond_2
    new-instance v0, Lcom/google/android/common/http/UrlRules$RuleFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/common/http/UrlRules$RuleFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_3
    iput-object v3, p0, Lcom/google/android/common/http/f;->c:Ljava/lang/String;

    .line 104
    iput-boolean v1, p0, Lcom/google/android/common/http/f;->d:Z

    .line 105
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/android/common/http/f;->d:Z

    if-eqz v0, :cond_1

    .line 122
    const/4 p1, 0x0

    .line 126
    :cond_0
    :goto_0
    return-object p1

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/google/android/common/http/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/common/http/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/common/http/f;->b:Ljava/lang/String;

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
    .line 132
    check-cast p1, Lcom/google/android/common/http/f;

    iget-object v0, p1, Lcom/google/android/common/http/f;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/common/http/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
