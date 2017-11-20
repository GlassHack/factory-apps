.class public Lcom/google/android/location/p/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/location/p/b;->a:Ljava/lang/Object;

    .line 33
    iput-object p2, p0, Lcom/google/android/location/p/b;->b:Ljava/lang/Object;

    .line 34
    iput-boolean p3, p0, Lcom/google/android/location/p/b;->c:Z

    .line 35
    return-void
.end method


# virtual methods
.method public final C()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/location/p/b;->c:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/location/p/b;->a:Ljava/lang/Object;

    .line 54
    :goto_0
    return-object v0

    .line 53
    :cond_0
    const-string v0, "Detachable"

    const-string v1, "get() of an detached object is called."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/google/android/location/p/b;->b:Ljava/lang/Object;

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/p/b;->c:Z

    .line 43
    return-void
.end method
