.class public final Lcom/google/android/gms/fitness/n/av;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Set;

.field final b:J


# direct methods
.method public constructor <init>(Ljava/util/Set;J)V
    .locals 2

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/n/av;->a:Ljava/util/Set;

    .line 467
    iput-wide p2, p0, Lcom/google/android/gms/fitness/n/av;->b:J

    .line 468
    return-void
.end method
