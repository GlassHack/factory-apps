.class final Lcom/google/android/gms/fitness/b/b/l;
.super Lcom/google/android/gms/fitness/b/b/p;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/b/b/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/b/b/k;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/b/l;->a:Lcom/google/android/gms/fitness/b/b/k;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/b/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/l;->a:Lcom/google/android/gms/fitness/b/b/k;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/l;->a:Lcom/google/android/gms/fitness/b/b/k;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/k;->b()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
