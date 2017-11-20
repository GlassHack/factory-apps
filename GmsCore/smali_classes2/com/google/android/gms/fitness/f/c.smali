.class final Lcom/google/android/gms/fitness/f/c;
.super Ljava/util/HashSet;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 39
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->x:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/f/c;->addAll(Ljava/util/Collection;)Z

    .line 40
    sget-object v0, Lcom/google/android/gms/fitness/data/a;->k:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/f/c;->addAll(Ljava/util/Collection;)Z

    .line 41
    return-void
.end method
