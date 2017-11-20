.class final Lcom/google/android/gms/wearable/node/bluetooth/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field volatile a:Lcom/google/android/gms/wearable/node/bluetooth/a;

.field volatile b:Lcom/google/android/gms/wearable/ConnectionConfiguration;

.field final c:Lcom/google/android/gms/wearable/node/bluetooth/g;

.field final synthetic d:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;Landroid/content/Context;Lcom/google/android/gms/wearable/ConnectionConfiguration;)V
    .locals 1

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/bluetooth/b;->d:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p3, p0, Lcom/google/android/gms/wearable/node/bluetooth/b;->b:Lcom/google/android/gms/wearable/ConnectionConfiguration;

    .line 77
    new-instance v0, Lcom/google/android/gms/wearable/node/bluetooth/g;

    invoke-direct {v0, p2}, Lcom/google/android/gms/wearable/node/bluetooth/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/b;->c:Lcom/google/android/gms/wearable/node/bluetooth/g;

    .line 78
    return-void
.end method
