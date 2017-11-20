.class public final Lcom/android/d/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/android/d/c;

.field public final c:Lcom/android/d/aa;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/android/d/aa;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/d/t;->d:Z

    .line 81
    iput-object v1, p0, Lcom/android/d/t;->a:Ljava/lang/Object;

    .line 82
    iput-object v1, p0, Lcom/android/d/t;->b:Lcom/android/d/c;

    .line 83
    iput-object p1, p0, Lcom/android/d/t;->c:Lcom/android/d/aa;

    .line 84
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/android/d/c;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/d/t;->d:Z

    .line 75
    iput-object p1, p0, Lcom/android/d/t;->a:Ljava/lang/Object;

    .line 76
    iput-object p2, p0, Lcom/android/d/t;->b:Lcom/android/d/c;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/d/t;->c:Lcom/android/d/aa;

    .line 78
    return-void
.end method

.method public static a(Lcom/android/d/aa;)Lcom/android/d/t;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/android/d/t;

    invoke-direct {v0, p0}, Lcom/android/d/t;-><init>(Lcom/android/d/aa;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/android/d/c;)Lcom/android/d/t;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/android/d/t;

    invoke-direct {v0, p0, p1}, Lcom/android/d/t;-><init>(Ljava/lang/Object;Lcom/android/d/c;)V

    return-object v0
.end method
