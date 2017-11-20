.class public Lcom/google/glass/phone/PhoneCallService;
.super Landroid/app/Service;
.source "PhoneCallService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/phone/PhoneCallService$1;,
        Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;,
        Lcom/google/glass/phone/PhoneCallService$PhoneCallListenerOperation;,
        Lcom/google/glass/phone/PhoneCallService$PhoneCallServiceBinder;
    }
.end annotation


# static fields
.field private static final DELAY_HIDE_OUTGOING_CALL_AFTER_ERROR_MS:J = 0x7d0L

.field private static final TAG:Ljava/lang/String;

.field private static final handler:Landroid/os/Handler;


# instance fields
.field clientBinder:Lcom/google/glass/phone/PhoneCallService$PhoneCallServiceBinder;

.field private lastCallState:Lcom/google/glass/phone/PhoneCall;

.field private final listeners:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster",
            "<",
            "Lcom/google/glass/phone/IPhoneCallListener;",
            ">;"
        }
    .end annotation
.end field

.field managerListener:Lcom/google/glass/phone/IPhoneCallListener$Stub;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private phoneCallRemoteViewManager:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

.field timelineHelper:Lcom/google/glass/phone/PhoneCallTimelineHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/google/glass/phone/PhoneCallService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/phone/PhoneCallService;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/google/glass/phone/PhoneCallService;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    new-instance v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;-><init>(Lcom/google/glass/phone/PhoneCallService;Lcom/google/glass/phone/PhoneCallService$1;)V

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->managerListener:Lcom/google/glass/phone/IPhoneCallListener$Stub;

    .line 69
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 86
    new-instance v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    invoke-direct {v0}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;-><init>()V

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->listeners:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/phone/PhoneCallService;)Lcom/google/glass/phone/PhoneCall;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/phone/PhoneCallService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->lastCallState:Lcom/google/glass/phone/PhoneCall;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/phone/PhoneCallService;Lcom/google/glass/phone/PhoneCall;)Lcom/google/glass/phone/PhoneCall;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/phone/PhoneCallService;
    .param p1, "x1"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallService;->lastCallState:Lcom/google/glass/phone/PhoneCall;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/phone/PhoneCallService;)Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/phone/PhoneCallService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->listeners:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/phone/PhoneCallService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/phone/PhoneCallService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/glass/phone/PhoneCallService;->logUserEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/phone/PhoneCallService;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/phone/PhoneCallService;
    .param p1, "x1"    # J

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/glass/phone/PhoneCallService;->logCallDuration(J)V

    return-void
.end method

.method static synthetic access$600()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/glass/phone/PhoneCallService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/glass/phone/PhoneCallService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private logCallDuration(J)V
    .locals 8
    .param p1, "duration"    # J

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->PHONE_CALL:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "a"

    const-string v3, "12"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "t"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x3e8

    div-long v6, p1, v6

    .line 164
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 162
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method private logUserEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->PHONE_CALL:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "a"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 157
    invoke-static {v2, p1, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 158
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/glass/phone/IPhoneCallListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/glass/phone/IPhoneCallListener;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->listeners:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->register(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/google/glass/phone/PhoneCallService;->TAG:Ljava/lang/String;

    const-string v1, "Listener added."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :cond_0
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 150
    new-instance v0, Lcom/google/glass/phone/PhoneCallHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/phone/PhoneCallHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Is in call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->lastCallState:Lcom/google/glass/phone/PhoneCall;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Last call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public getLastCallState()Lcom/google/glass/phone/PhoneCall;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->lastCallState:Lcom/google/glass/phone/PhoneCall;

    return-object v0
.end method

.method public getPhoneCallRemoteViewManager()Lcom/google/glass/phone/PhoneCallRemoteViewManager;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->phoneCallRemoteViewManager:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    return-object v0
.end method

.method hidePhoneCall()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->phoneCallRemoteViewManager:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->phoneCallRemoteViewManager:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->hidePhoneCall()V

    .line 187
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 132
    const-string v0, "com.google.glass.phone.MANAGEMENT_BINDER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->managerListener:Lcom/google/glass/phone/IPhoneCallListener$Stub;

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->clientBinder:Lcom/google/glass/phone/PhoneCallService$PhoneCallServiceBinder;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 91
    sget-object v0, Lcom/google/glass/phone/PhoneCallService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 93
    new-instance v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallServiceBinder;

    invoke-direct {v0, p0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallServiceBinder;-><init>(Lcom/google/glass/phone/PhoneCallService;)V

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->clientBinder:Lcom/google/glass/phone/PhoneCallService$PhoneCallServiceBinder;

    .line 94
    new-instance v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/phone/PhoneCallTimelineHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->timelineHelper:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    .line 96
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/nowtown/NowTownUtils;->isNowTownEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/glass/phone/PhoneCallNowTownManager;

    invoke-direct {v0, p0}, Lcom/google/glass/phone/PhoneCallNowTownManager;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->phoneCallRemoteViewManager:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    .line 98
    return-void

    .line 96
    :cond_0
    new-instance v0, Lcom/google/glass/phone/PhoneCallLiveCardManager;

    invoke-direct {v0, p0}, Lcom/google/glass/phone/PhoneCallLiveCardManager;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->listeners:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->listeners:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    invoke-virtual {v0}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->close()V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallService;->hidePhoneCall()V

    .line 145
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 146
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 102
    sget-object v0, Lcom/google/glass/phone/PhoneCallService;->TAG:Ljava/lang/String;

    const-string v1, "Starting service."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/google/glass/phone/IPhoneCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/glass/phone/IPhoneCallListener;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->listeners:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->unregister(Landroid/os/IInterface;)Z

    .line 124
    return-void
.end method

.method showPhoneCall(Lcom/google/glass/phone/PhoneCall;)V
    .locals 1
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/phone/PhoneCallService;->showPhoneCall(Lcom/google/glass/phone/PhoneCall;Z)V

    .line 174
    return-void
.end method

.method showPhoneCall(Lcom/google/glass/phone/PhoneCall;Z)V
    .locals 1
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;
    .param p2, "goToItem"    # Z

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->phoneCallRemoteViewManager:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService;->phoneCallRemoteViewManager:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->showPhoneCall(Lcom/google/glass/phone/PhoneCall;Z)V

    .line 180
    :cond_0
    return-void
.end method
