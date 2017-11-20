.class public interface abstract Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast_mirroring/CastMirroring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CastMirroringCallbacks"
.end annotation


# static fields
.field public static final ERROR_MAJOR_BUSY:I = 0x2

.field public static final ERROR_MAJOR_GENERIC:I = 0x1

.field public static final ERROR_MAJOR_SERVICE_GONE:I


# virtual methods
.method public abstract onCastMirroringConnected()V
.end method

.method public abstract onCastMirroringConnectedWithDevice(Lcom/google/android/gms/cast/CastDevice;)V
.end method

.method public abstract onCastMirroringDisconnected()V
.end method

.method public abstract onCastMirroringError(II)V
.end method
