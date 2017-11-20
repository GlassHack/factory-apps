.class final Lcom/google/android/gms/fitness/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/a/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/a/a;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/gms/fitness/a/b;->a:Lcom/google/android/gms/fitness/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 98
    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    check-cast p2, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v1

    invoke-virtual {p2, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v2

    if-ge v2, v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne v2, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
