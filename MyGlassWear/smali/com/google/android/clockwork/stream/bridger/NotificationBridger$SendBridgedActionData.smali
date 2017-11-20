.class Lcom/google/android/clockwork/stream/bridger/NotificationBridger$SendBridgedActionData;
.super Ljava/lang/Object;
.source "NotificationBridger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/clockwork/stream/bridger/NotificationBridger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendBridgedActionData"
.end annotation


# instance fields
.field public final actionIndex:I

.field public final isWearableAction:Z

.field public final remoteInputResults:Lcom/google/android/gms/wearable/DataMap;

.field public final remoteStreamItemId:Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

.field final synthetic this$0:Lcom/google/android/clockwork/stream/bridger/NotificationBridger;


# direct methods
.method public constructor <init>(Lcom/google/android/clockwork/stream/bridger/NotificationBridger;IZLcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;Lcom/google/android/gms/wearable/DataMap;)V
    .locals 0
    .param p2, "actionIndex"    # I
    .param p3, "isWearableAction"    # Z
    .param p4, "remoteStreamItemId"    # Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    .param p5, "remoteInputResults"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    .line 976
    iput-object p1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$SendBridgedActionData;->this$0:Lcom/google/android/clockwork/stream/bridger/NotificationBridger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 977
    iput p2, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$SendBridgedActionData;->actionIndex:I

    .line 978
    iput-boolean p3, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$SendBridgedActionData;->isWearableAction:Z

    .line 979
    iput-object p4, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$SendBridgedActionData;->remoteStreamItemId:Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    .line 980
    iput-object p5, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$SendBridgedActionData;->remoteInputResults:Lcom/google/android/gms/wearable/DataMap;

    .line 981
    return-void
.end method
