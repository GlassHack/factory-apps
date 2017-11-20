.class public final Lcom/google/android/gms/fitness/a/a/b;
.super Lcom/google/android/gms/fitness/a/a/c;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/fitness/a/a/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/a/a/a;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/fitness/a/a/c;-><init>()V

    .line 22
    const-string v0, "activity segment cache"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/a/a/a;

    iput-object v0, p0, Lcom/google/android/gms/fitness/a/a/b;->a:Lcom/google/android/gms/fitness/a/a/a;

    .line 24
    return-void
.end method


# virtual methods
.method final a(Ljava/util/List;JJJLjava/util/List;Z)Ljava/util/List;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This function should not be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
