.class Lcom/google/glass/settings/timezone/NewTimeZoneService$1;
.super Ljava/lang/Object;
.source "NewTimeZoneService.java"

# interfaces
.implements Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/timezone/NewTimeZoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/timezone/NewTimeZoneService;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/timezone/NewTimeZoneService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/timezone/NewTimeZoneService;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService$1;->this$0:Lcom/google/glass/settings/timezone/NewTimeZoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeZoneReceived(Ljava/lang/String;I)V
    .locals 6
    .param p1, "timeZone"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 59
    invoke-static {}, Lcom/google/glass/settings/timezone/NewTimeZoneService;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Timezone Received by listener [timezone=%s ,priority=%s, lastUpdateTime=%s]."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService$1;->this$0:Lcom/google/glass/settings/timezone/NewTimeZoneService;

    invoke-static {v4}, Lcom/google/glass/settings/timezone/NewTimeZoneService;->access$100(Lcom/google/glass/settings/timezone/NewTimeZoneService;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 59
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService$1;->this$0:Lcom/google/glass/settings/timezone/NewTimeZoneService;

    invoke-static {v0, p1, p2}, Lcom/google/glass/settings/timezone/NewTimeZoneService;->access$300(Lcom/google/glass/settings/timezone/NewTimeZoneService;Ljava/lang/String;I)V

    .line 62
    return-void
.end method
