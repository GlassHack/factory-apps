.class public interface abstract Lcom/google/glass/build/BuildHelper;
.super Ljava/lang/Object;
.source "BuildHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/build/BuildHelper$Type;
    }
.end annotation


# virtual methods
.method public abstract getDevice()Ljava/lang/String;
.end method

.method public abstract getFingerprint()Ljava/lang/String;
.end method

.method public abstract getGservicesDogfoodValue(Landroid/content/Context;)Z
.end method

.method public abstract getHardware()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getModel()Ljava/lang/String;
.end method

.method public abstract getProduct()Ljava/lang/String;
.end method

.method public abstract getSerialNumber()Ljava/lang/String;
.end method

.method public abstract getTags()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/google/glass/build/BuildHelper$Type;
.end method

.method public abstract isEmulator()Z
.end method

.method public abstract isEng()Z
.end method

.method public abstract isGlass()Z
.end method

.method public abstract isGlass1()Z
.end method

.method public abstract isGlass15()Z
.end method

.method public abstract isGlass2()Z
.end method

.method public abstract isGlassWithServices()Z
.end method

.method public abstract isOemGlass()Z
.end method

.method public abstract isRunningAsSystemUser(Landroid/content/Context;)Z
.end method

.method public abstract isUser()Z
.end method

.method public abstract isUserdebug()Z
.end method
