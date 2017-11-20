.class public final Lcom/google/android/location/collectionlib/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/location/collectionlib/ac;

.field public final b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/Sensor;)V
    .locals 1

    .prologue
    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    new-instance v0, Lcom/google/android/location/collectionlib/ac;

    invoke-direct {v0, p2}, Lcom/google/android/location/collectionlib/ac;-><init>(Landroid/hardware/Sensor;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/z;->a:Lcom/google/android/location/collectionlib/ac;

    .line 620
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/z;->b:Ljava/util/Set;

    .line 621
    iget-object v0, p0, Lcom/google/android/location/collectionlib/z;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 622
    return-void
.end method
