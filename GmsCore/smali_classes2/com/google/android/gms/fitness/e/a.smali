.class public final Lcom/google/android/gms/fitness/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/fitness/e/a;->a:Ljava/util/List;

    .line 18
    iput-object p2, p0, Lcom/google/android/gms/fitness/e/a;->b:Ljava/util/List;

    .line 19
    iput-object p3, p0, Lcom/google/android/gms/fitness/e/a;->c:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    iget-object v2, p0, Lcom/google/android/gms/fitness/e/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/fitness/e/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v0

    .line 36
    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/e/a;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/c/a/ax;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 35
    goto :goto_0

    :cond_2
    move v0, v1

    .line 36
    goto :goto_1
.end method
