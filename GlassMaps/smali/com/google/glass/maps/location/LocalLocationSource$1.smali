.class Lcom/google/glass/maps/location/LocalLocationSource$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final childLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/maps/location/LocalLocationSource;


# direct methods
.method varargs constructor <init>(Lcom/google/glass/maps/location/LocalLocationSource;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/glass/maps/location/LocalLocationSource$1;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/google/glass/maps/location/LocalLocationSource;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "CompanionPropertiesReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource$1;->childLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 82
    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource$1;->childLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 87
    if-eqz p2, :cond_0

    const-string v0, "com.google.glass.extra.EXTRA_COMPANION_GPS_ENABLED"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource$1;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    invoke-static {v0, p2}, Lcom/google/glass/maps/location/LocalLocationSource;->access$100(Lcom/google/glass/maps/location/LocalLocationSource;Landroid/content/Intent;)Z

    move-result v1

    .line 89
    invoke-static {}, Lcom/google/glass/maps/location/LocalLocationSource;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onReceiveIntent: remoteGpsEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource$1;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    invoke-static {v0}, Lcom/google/glass/maps/location/LocalLocationSource;->access$200(Lcom/google/glass/maps/location/LocalLocationSource;)Z

    move-result v0

    if-eq v0, v1, :cond_0

    .line 93
    invoke-static {}, Lcom/google/glass/maps/location/LocalLocationSource;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "remote_gps changed from %s to %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource$1;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    .line 94
    invoke-static {v0}, Lcom/google/glass/maps/location/LocalLocationSource;->access$200(Lcom/google/glass/maps/location/LocalLocationSource;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "enabled"

    :goto_0
    aput-object v0, v4, v6

    if-eqz v1, :cond_2

    const-string v0, "enabled"

    :goto_1
    aput-object v0, v4, v7

    .line 93
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource$1;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    invoke-static {v0, v1}, Lcom/google/glass/maps/location/LocalLocationSource;->access$202(Lcom/google/glass/maps/location/LocalLocationSource;Z)Z

    .line 98
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource$1;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    invoke-static {v0}, Lcom/google/glass/maps/location/LocalLocationSource;->access$300(Lcom/google/glass/maps/location/LocalLocationSource;)Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/google/glass/maps/location/LocalLocationSource$1;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    invoke-static {v1}, Lcom/google/glass/maps/location/LocalLocationSource;->access$400(Lcom/google/glass/maps/location/LocalLocationSource;)Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/google/glass/maps/location/LocalLocationSource$1;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    iget-object v2, p0, Lcom/google/glass/maps/location/LocalLocationSource$1;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    invoke-static {v2}, Lcom/google/glass/maps/location/LocalLocationSource;->access$400(Lcom/google/glass/maps/location/LocalLocationSource;)Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/maps/location/LocalLocationSource;->removeLocationUpdates(Lcom/google/android/maps/driveabout/location/b;)V

    .line 105
    iget-object v1, p0, Lcom/google/glass/maps/location/LocalLocationSource$1;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    iget-object v2, p0, Lcom/google/glass/maps/location/LocalLocationSource$1;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    .line 106
    invoke-static {v2}, Lcom/google/glass/maps/location/LocalLocationSource;->access$400(Lcom/google/glass/maps/location/LocalLocationSource;)Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;->access$500(Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/maps/location/LocalLocationSource$1;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    invoke-static {v4}, Lcom/google/glass/maps/location/LocalLocationSource;->access$400(Lcom/google/glass/maps/location/LocalLocationSource;)Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;->access$600(Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;)F

    move-result v4

    iget-object v5, p0, Lcom/google/glass/maps/location/LocalLocationSource$1;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    .line 107
    invoke-static {v5}, Lcom/google/glass/maps/location/LocalLocationSource;->access$400(Lcom/google/glass/maps/location/LocalLocationSource;)Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;

    move-result-object v5

    .line 105
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/glass/maps/location/LocalLocationSource;->requestGpsLocationUpdates(JFLcom/google/android/maps/driveabout/location/b;)V

    .line 109
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/a/d;

    move-result-object v1

    .line 110
    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_GPS_LOCATION_SWITCH:Lcom/google/glass/userevent/UserEventAction;

    iget-object v2, v2, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/common/a/d;->b(Ljava/lang/String;)Lcom/google/common/a/d;

    .line 112
    const-string v2, "f"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "t"

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/google/glass/maps/location/LocalLocationSource$1;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    .line 114
    invoke-static {v4}, Lcom/google/glass/maps/location/LocalLocationSource;->access$300(Lcom/google/glass/maps/location/LocalLocationSource;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 112
    invoke-static {v2, v0, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/a/d;->c(Ljava/lang/String;)Lcom/google/common/a/d;

    .line 115
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource$1;->this$0:Lcom/google/glass/maps/location/LocalLocationSource;

    invoke-static {v0}, Lcom/google/glass/maps/location/LocalLocationSource;->access$700(Lcom/google/glass/maps/location/LocalLocationSource;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/a/d;)V

    .line 119
    :cond_0
    return-void

    .line 94
    :cond_1
    const-string v0, "disabled"

    goto :goto_0

    :cond_2
    const-string v0, "disabled"

    goto :goto_1
.end method
