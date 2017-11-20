.class public abstract Lcom/google/glass/phone/PhoneCallManagerServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final ACTION_GET_MANAGEMENT_BINDER:Ljava/lang/String; = "com.google.glass.phone.MANAGEMENT_BINDER"

.field static final PHONE_CALL_SERVICE:Landroid/content/ComponentName;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 23
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.phone"

    const-string v2, "com.google.glass.phone.PhoneCallService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->PHONE_CALL_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Binding to phone call service."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.phone.MANAGEMENT_BINDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    sget-object v1, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->PHONE_CALL_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 47
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p0, v2}, Lcom/google/glass/util/IntentSender;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 48
    return-void
.end method

.method public abstract onListenerAttached(Lcom/google/glass/phone/IPhoneCallListener;)V
.end method

.method public abstract onListenerDetached()V
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Service connected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-static {p2}, Lcom/google/glass/phone/IPhoneCallListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/phone/IPhoneCallListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->onListenerAttached(Lcom/google/glass/phone/IPhoneCallListener;)V

    .line 34
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Service disconnected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->onListenerDetached()V

    .line 40
    return-void
.end method

.method public unbind(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 52
    sget-object v0, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unbinding from phone call service."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/google/glass/util/IntentSender;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 54
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->onListenerDetached()V

    .line 55
    return-void
.end method
