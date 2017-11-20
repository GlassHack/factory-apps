.class public final Lcom/google/android/gsf/loginservice/StatusHelper;
.super Ljava/lang/Object;
.source "StatusHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/loginservice/StatusHelper$1;
    }
.end annotation


# static fields
.field public static final BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/StatusHelper;

.field private static final LOG_PREFIX:Ljava/lang/String;

.field public static final NETWORK_ERROR:Lcom/google/android/gsf/loginservice/StatusHelper;

.field public static final SUCCESS:Lcom/google/android/gsf/loginservice/StatusHelper;

.field public static final USER_CANCEL:Lcom/google/android/gsf/loginservice/StatusHelper;


# instance fields
.field public final resource:I

.field public final status:Lcom/google/android/gms/auth/firstparty/shared/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/android/gsf/loginservice/StatusHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/loginservice/StatusHelper;->LOG_PREFIX:Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->BAD_AUTHENTICATION:Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/StatusHelper;->get(Lcom/google/android/gms/auth/firstparty/shared/Status;)Lcom/google/android/gsf/loginservice/StatusHelper;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/loginservice/StatusHelper;->BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/StatusHelper;

    .line 21
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/StatusHelper;->get(Lcom/google/android/gms/auth/firstparty/shared/Status;)Lcom/google/android/gsf/loginservice/StatusHelper;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/loginservice/StatusHelper;->SUCCESS:Lcom/google/android/gsf/loginservice/StatusHelper;

    .line 22
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->NETWORK_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/StatusHelper;->get(Lcom/google/android/gms/auth/firstparty/shared/Status;)Lcom/google/android/gsf/loginservice/StatusHelper;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/loginservice/StatusHelper;->NETWORK_ERROR:Lcom/google/android/gsf/loginservice/StatusHelper;

    .line 23
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->USER_CANCEL:Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/StatusHelper;->get(Lcom/google/android/gms/auth/firstparty/shared/Status;)Lcom/google/android/gsf/loginservice/StatusHelper;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/loginservice/StatusHelper;->USER_CANCEL:Lcom/google/android/gsf/loginservice/StatusHelper;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/Status;I)V
    .locals 0
    .param p1, "status"    # Lcom/google/android/gms/auth/firstparty/shared/Status;
    .param p2, "res"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/StatusHelper;->status:Lcom/google/android/gms/auth/firstparty/shared/Status;

    .line 81
    iput p2, p0, Lcom/google/android/gsf/loginservice/StatusHelper;->resource:I

    .line 82
    return-void
.end method

.method public static fromExtra(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/Status;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 154
    if-nez p0, :cond_1

    .line 155
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    .line 162
    :cond_0
    :goto_0
    return-object v1

    .line 157
    :cond_1
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->EXTRA_KEY_STATUS:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "err":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 159
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    goto :goto_0

    .line 161
    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/shared/Status;->fromWireCode(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v1

    .line 162
    .local v1, "res":Lcom/google/android/gms/auth/firstparty/shared/Status;
    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/Status;->UNKNOWN:Lcom/google/android/gms/auth/firstparty/shared/Status;

    goto :goto_0
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/Status;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 112
    if-nez p0, :cond_1

    .line 113
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    .line 120
    :cond_0
    :goto_0
    return-object v1

    .line 115
    :cond_1
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->EXTRA_KEY_STATUS:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "err":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 117
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    goto :goto_0

    .line 119
    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/shared/Status;->fromWireCode(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v1

    .line 120
    .local v1, "res":Lcom/google/android/gms/auth/firstparty/shared/Status;
    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/Status;->UNKNOWN:Lcom/google/android/gms/auth/firstparty/shared/Status;

    goto :goto_0
.end method

.method public static fromJSON(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/Status;
    .locals 2
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 90
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    :cond_0
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/Status;->SERVER_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

    .line 97
    :goto_0
    return-object v1

    .line 95
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/auth/firstparty/shared/Status;->valueOf(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/Status;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/Status;->SERVER_ERROR:Lcom/google/android/gms/auth/firstparty/shared/Status;

    goto :goto_0
.end method

.method public static fromMessage(Landroid/os/Message;)Lcom/google/android/gms/auth/firstparty/shared/Status;
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/Status;->EXTRA_KEY_STATUS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "wire":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/gsf/loginservice/StatusHelper;->fromJSON(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v1

    return-object v1
.end method

.method public static fromWire(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/Status;
    .locals 4
    .param p0, "wire"    # Ljava/lang/String;

    .prologue
    .line 145
    if-nez p0, :cond_1

    .line 146
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    .line 150
    :cond_0
    :goto_0
    return-object v0

    .line 148
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/auth/firstparty/shared/Status;->fromWireCode(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v0

    .line 149
    .local v0, "res":Lcom/google/android/gms/auth/firstparty/shared/Status;
    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/loginservice/StatusHelper;->LOG_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Status from wire: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->UNKNOWN:Lcom/google/android/gms/auth/firstparty/shared/Status;

    goto :goto_0
.end method

.method public static get(Lcom/google/android/gms/auth/firstparty/shared/Status;)Lcom/google/android/gsf/loginservice/StatusHelper;
    .locals 4
    .param p0, "status"    # Lcom/google/android/gms/auth/firstparty/shared/Status;

    .prologue
    .line 26
    sget-object v1, Lcom/google/android/gsf/loginservice/StatusHelper;->LOG_PREFIX:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    .local v0, "resource":I
    sget-object v1, Lcom/google/android/gsf/loginservice/StatusHelper$1;->$SwitchMap$com$google$android$gms$auth$firstparty$shared$Status:[I

    invoke-virtual {p0}, Lcom/google/android/gms/auth/firstparty/shared/Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 67
    const-string v1, "GLSActivity"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/loginservice/StatusHelper;->LOG_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " No resource configured for status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1
    const/4 v0, 0x0

    .line 72
    :goto_0
    new-instance v1, Lcom/google/android/gsf/loginservice/StatusHelper;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gsf/loginservice/StatusHelper;-><init>(Lcom/google/android/gms/auth/firstparty/shared/Status;I)V

    return-object v1

    .line 31
    :pswitch_0
    const v0, 0x7f070101

    .line 32
    goto :goto_0

    .line 34
    :pswitch_1
    const v0, 0x7f07011a

    .line 35
    goto :goto_0

    .line 37
    :pswitch_2
    const v0, 0x7f07009a

    .line 38
    goto :goto_0

    .line 40
    :pswitch_3
    const v0, 0x7f070095

    .line 41
    goto :goto_0

    .line 43
    :pswitch_4
    const v0, 0x7f0700b2

    .line 44
    goto :goto_0

    .line 46
    :pswitch_5
    const v0, 0x7f070094

    .line 47
    goto :goto_0

    .line 49
    :pswitch_6
    const v0, 0x7f0700b3

    .line 50
    goto :goto_0

    .line 52
    :pswitch_7
    const v0, 0x7f070099

    .line 53
    goto :goto_0

    .line 55
    :pswitch_8
    const v0, 0x7f0700b0

    .line 56
    goto :goto_0

    .line 58
    :pswitch_9
    const v0, 0x7f0700a4

    .line 59
    goto :goto_0

    .line 61
    :pswitch_a
    const v0, 0x7f0700b1

    .line 62
    goto :goto_0

    .line 64
    :pswitch_b
    const v0, 0x7f070082

    .line 65
    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public toIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 129
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/Status;->EXTRA_KEY_STATUS:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/StatusHelper;->status:Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/shared/Status;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    return-void
.end method

.method public toMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/Status;->EXTRA_KEY_STATUS:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/StatusHelper;->status:Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/shared/Status;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method
