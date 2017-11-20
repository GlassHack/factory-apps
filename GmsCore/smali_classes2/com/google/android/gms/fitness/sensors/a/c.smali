.class final Lcom/google/android/gms/fitness/sensors/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/a/y;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/data/BleDevice;

.field final synthetic b:Lcom/google/android/gms/fitness/sensors/a/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/a/a;Lcom/google/android/gms/fitness/data/BleDevice;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/a/c;->b:Lcom/google/android/gms/fitness/sensors/a/a;

    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/a/c;->a:Lcom/google/android/gms/fitness/data/BleDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 122
    check-cast p1, Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/fitness/internal/ble/b;

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/c;->a:Lcom/google/android/gms/fitness/data/BleDevice;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/fitness/internal/ble/b;-><init>(Lcom/google/android/gms/fitness/data/BleDevice;Ljava/util/List;)V

    return-object v0
.end method
