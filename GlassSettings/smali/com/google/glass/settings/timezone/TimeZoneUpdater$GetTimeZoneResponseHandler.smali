.class Lcom/google/glass/settings/timezone/TimeZoneUpdater$GetTimeZoneResponseHandler;
.super Lcom/google/glass/net/SimpleProtoResponseHandler;
.source "TimeZoneUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/timezone/TimeZoneUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetTimeZoneResponseHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/net/SimpleProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/timezone/TimeZoneUpdater;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/timezone/TimeZoneUpdater;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$GetTimeZoneResponseHandler;->this$0:Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    invoke-direct {p0}, Lcom/google/glass/net/SimpleProtoResponseHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/timezone/TimeZoneUpdater;Lcom/google/glass/settings/timezone/TimeZoneUpdater$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/timezone/TimeZoneUpdater;
    .param p2, "x1"    # Lcom/google/glass/settings/timezone/TimeZoneUpdater$1;

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/google/glass/settings/timezone/TimeZoneUpdater$GetTimeZoneResponseHandler;-><init>(Lcom/google/glass/settings/timezone/TimeZoneUpdater;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;)V
    .locals 5
    .param p1, "responseProto"    # Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;

    .prologue
    const/4 v4, 0x0

    .line 306
    iget-object v1, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$GetTimeZoneResponseHandler;->this$0:Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    invoke-static {v1}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->access$800(Lcom/google/glass/settings/timezone/TimeZoneUpdater;)Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    move-result-object v1

    sget-object v2, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;->CANCELED:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    if-ne v1, v2, :cond_0

    .line 307
    invoke-static {}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Server response received, but request was cancelled."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->getReverseSuccessful()Z

    move-result v1

    if-nez v1, :cond_1

    .line 311
    invoke-static {}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Server says reverse was unsuccessful, not updating the time zone."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    :cond_1
    invoke-static {}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Server claims reverse was successful, checking payload."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->getTimeZone()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "timeZone":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    invoke-static {}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Server payload was invalid, not changing the time zone."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 319
    :cond_2
    invoke-static {}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Server payload was valid, updating the time zone: [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    iget-object v1, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$GetTimeZoneResponseHandler;->this$0:Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    invoke-static {v1}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->access$900(Lcom/google/glass/settings/timezone/TimeZoneUpdater;)Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;

    move-result-object v1

    const/16 v2, 0x32

    invoke-interface {v1, v0, v2}, Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;->onTimeZoneReceived(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0

    .prologue
    .line 303
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/timezone/TimeZoneUpdater$GetTimeZoneResponseHandler;->onSuccess(Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;)V

    return-void
.end method
