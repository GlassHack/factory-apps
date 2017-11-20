.class public Lcom/android/systemui/SystemUIService;
.super Landroid/app/Service;
.source "SystemUIService.java"


# instance fields
.field private final SERVICES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mServices:[Lcom/android/systemui/SystemUI;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/android/systemui/media/RingtonePlayer;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/SystemUIService;->SERVICES:[Ljava/lang/Class;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->SERVICES:[Ljava/lang/Class;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/systemui/SystemUI;

    iput-object v0, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 84
    if-eqz p3, :cond_0

    array-length v6, p3

    if-nez v6, :cond_1

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    .local v0, "arr$":[Lcom/android/systemui/SystemUI;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 86
    .local v5, "ui":Lcom/android/systemui/SystemUI;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumping service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "arr$":[Lcom/android/systemui/SystemUI;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "ui":Lcom/android/systemui/SystemUI;
    :cond_1
    const/4 v6, 0x0

    aget-object v4, p3, v6

    .line 91
    .local v4, "svc":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    .restart local v0    # "arr$":[Lcom/android/systemui/SystemUI;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 92
    .restart local v5    # "ui":Lcom/android/systemui/SystemUI;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 94
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 91
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 98
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "svc":Ljava/lang/String;
    .end local v5    # "ui":Lcom/android/systemui/SystemUI;
    :cond_3
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    .local v0, "arr$":[Lcom/android/systemui/SystemUI;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 70
    .local v3, "ui":Lcom/android/systemui/SystemUI;
    invoke-virtual {v3, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v3    # "ui":Lcom/android/systemui/SystemUI;
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 48
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v2, "components":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    iget-object v5, p0, Lcom/android/systemui/SystemUIService;->SERVICES:[Ljava/lang/Class;

    array-length v0, v5

    .line 50
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 51
    iget-object v5, p0, Lcom/android/systemui/SystemUIService;->SERVICES:[Ljava/lang/Class;

    aget-object v1, v5, v4

    .line 52
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "SystemUIService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loading: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/SystemUI;

    aput-object v5, v6, v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    iget-object v5, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v5, v5, v4

    iput-object p0, v5, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 61
    iget-object v5, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v5, v5, v4

    iput-object v2, v5, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    .line 62
    const-string v5, "SystemUIService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "running: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v5, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/android/systemui/SystemUI;->start()V

    .line 50
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 55
    :catch_0
    move-exception v3

    .line 56
    .local v3, "ex":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 57
    .end local v3    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    .line 58
    .local v3, "ex":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 65
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ex":Ljava/lang/InstantiationException;
    :cond_0
    return-void
.end method
