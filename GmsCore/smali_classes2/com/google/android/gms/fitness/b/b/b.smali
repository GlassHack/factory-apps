.class final Lcom/google/android/gms/fitness/b/b/b;
.super Lcom/google/android/gms/fitness/b/b/p;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/b/b/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/b/b/a;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/b/b;->a:Lcom/google/android/gms/fitness/b/b/a;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/b/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/b;->a:Lcom/google/android/gms/fitness/b/b/a;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/b;->a:Lcom/google/android/gms/fitness/b/b/a;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/a;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
