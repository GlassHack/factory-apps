.class public final Lcom/google/android/d/a/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/d/a/d;

.field private final b:Z

.field private final c:Lcom/google/android/d/a/aa;


# direct methods
.method private constructor <init>(Lcom/google/android/d/a/aa;)V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/d/a/d;->p:Lcom/google/android/d/a/d;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/d/a/y;-><init>(Lcom/google/android/d/a/aa;ZLcom/google/android/d/a/d;)V

    .line 100
    return-void
.end method

.method private constructor <init>(Lcom/google/android/d/a/aa;ZLcom/google/android/d/a/d;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/android/d/a/y;->c:Lcom/google/android/d/a/aa;

    .line 105
    iput-boolean p2, p0, Lcom/google/android/d/a/y;->b:Z

    .line 106
    iput-object p3, p0, Lcom/google/android/d/a/y;->a:Lcom/google/android/d/a/d;

    .line 107
    return-void
.end method

.method public static a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/y;
    .locals 2

    .prologue
    .line 132
    invoke-static {p0}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v0, Lcom/google/android/d/a/y;

    new-instance v1, Lcom/google/android/d/a/z;

    invoke-direct {v1, p0}, Lcom/google/android/d/a/z;-><init>(Lcom/google/android/d/a/d;)V

    invoke-direct {v0, v1}, Lcom/google/android/d/a/y;-><init>(Lcom/google/android/d/a/aa;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/d/a/y;
    .locals 4

    .prologue
    .line 292
    new-instance v0, Lcom/google/android/d/a/y;

    iget-object v1, p0, Lcom/google/android/d/a/y;->c:Lcom/google/android/d/a/aa;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/d/a/y;->a:Lcom/google/android/d/a/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/d/a/y;-><init>(Lcom/google/android/d/a/aa;ZLcom/google/android/d/a/d;)V

    return-object v0
.end method
