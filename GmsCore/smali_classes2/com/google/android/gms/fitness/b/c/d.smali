.class final Lcom/google/android/gms/fitness/b/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/b/c/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/b/c/b;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/c/d;->a:Lcom/google/android/gms/fitness/b/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 145
    check-cast p1, Lcom/google/android/gms/fitness/b/c/g;

    check-cast p2, Lcom/google/android/gms/fitness/b/c/g;

    iget-wide v0, p1, Lcom/google/android/gms/fitness/b/c/g;->b:J

    iget-wide v2, p2, Lcom/google/android/gms/fitness/b/c/g;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/google/android/gms/fitness/b/c/g;->b:J

    iget-wide v2, p2, Lcom/google/android/gms/fitness/b/c/g;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
