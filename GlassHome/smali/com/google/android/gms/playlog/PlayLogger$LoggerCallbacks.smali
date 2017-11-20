.class public interface abstract Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/playlog/PlayLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoggerCallbacks"
.end annotation


# virtual methods
.method public abstract onLoggerConnected()V
.end method

.method public abstract onLoggerFailedConnection()V
.end method

.method public abstract onLoggerFailedConnectionWithResolution(Landroid/app/PendingIntent;)V
.end method
