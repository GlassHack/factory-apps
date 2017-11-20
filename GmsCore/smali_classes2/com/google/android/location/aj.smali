.class public final Lcom/google/android/location/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/location/p/f;

.field public b:Lcom/google/android/location/ai;


# direct methods
.method public constructor <init>(JJLcom/google/android/location/ai;)V
    .locals 1

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    new-instance v0, Lcom/google/android/location/p/f;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/location/p/f;-><init>(JJ)V

    iput-object v0, p0, Lcom/google/android/location/aj;->a:Lcom/google/android/location/p/f;

    .line 518
    iput-object p5, p0, Lcom/google/android/location/aj;->b:Lcom/google/android/location/ai;

    .line 519
    return-void
.end method
