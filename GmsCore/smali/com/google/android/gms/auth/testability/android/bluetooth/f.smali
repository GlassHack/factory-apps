.class public final Lcom/google/android/gms/auth/testability/android/bluetooth/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/testability/android/bluetooth/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/gms/auth/testability/android/bluetooth/f;

    invoke-direct {v0}, Lcom/google/android/gms/auth/testability/android/bluetooth/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/testability/android/bluetooth/f;->a:Lcom/google/android/gms/auth/testability/android/bluetooth/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/bluetooth/BluetoothServerSocket;)Lcom/google/android/gms/auth/testability/android/bluetooth/e;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/gms/auth/testability/android/bluetooth/f;->a:Lcom/google/android/gms/auth/testability/android/bluetooth/f;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/testability/android/bluetooth/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/testability/android/bluetooth/e;-><init>(Landroid/bluetooth/BluetoothServerSocket;)V

    goto :goto_0
.end method
