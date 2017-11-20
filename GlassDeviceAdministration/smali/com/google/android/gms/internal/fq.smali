.class public abstract Lcom/google/android/gms/internal/fq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fq$a;,
        Lcom/google/android/gms/internal/fq$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static OJ:Lcom/google/android/gms/internal/fq$b;

.field public static OK:Lcom/google/android/gms/internal/fq$a;


# instance fields
.field private final OG:C

.field private final OH:C

.field private final OI:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/fq$b;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fq$b;-><init>(Landroid/os/Bundle;)V

    sput-object v0, Lcom/google/android/gms/internal/fq;->OJ:Lcom/google/android/gms/internal/fq$b;

    new-instance v0, Lcom/google/android/gms/internal/fq$a;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fq$a;-><init>(Landroid/os/Bundle;)V

    sput-object v0, Lcom/google/android/gms/internal/fq;->OK:Lcom/google/android/gms/internal/fq$a;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;CC)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fq;->OI:Landroid/os/Bundle;

    iput-char p2, p0, Lcom/google/android/gms/internal/fq;->OG:C

    iput-char p3, p0, Lcom/google/android/gms/internal/fq;->OH:C

    return-void
.end method

.method private static a(Ljava/lang/String;CII)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_0

    if-ge v0, p3, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fq;->OI:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {p0, p4, p3}, Lcom/google/android/gms/internal/fq;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p3, v0

    goto :goto_1
.end method


# virtual methods
.method public final aO(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    iget-char v0, p0, Lcom/google/android/gms/internal/fq;->OH:C

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_2

    :goto_2
    iget-char v4, p0, Lcom/google/android/gms/internal/fq;->OG:C

    invoke-static {p1, v4, v2, v0}, Lcom/google/android/gms/internal/fq;->a(Ljava/lang/String;CII)I

    move-result v4

    iget-char v5, p0, Lcom/google/android/gms/internal/fq;->OG:C

    add-int/lit8 v6, v4, 0x1

    invoke-static {p1, v5, v6, v0}, Lcom/google/android/gms/internal/fq;->a(Ljava/lang/String;CII)I

    move-result v5

    if-ltz v4, :cond_1

    if-ltz v5, :cond_1

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/fq;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected abstract r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
