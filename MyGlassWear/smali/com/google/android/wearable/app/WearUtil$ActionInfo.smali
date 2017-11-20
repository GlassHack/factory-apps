.class public Lcom/google/android/wearable/app/WearUtil$ActionInfo;
.super Ljava/lang/Object;
.source "WearUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/wearable/app/WearUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionInfo"
.end annotation


# instance fields
.field private final actionIndex:I

.field private final isWearAction:Z


# direct methods
.method constructor <init>(ZI)V
    .locals 0
    .param p1, "isWearAction"    # Z
    .param p2, "actionIndex"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lcom/google/android/wearable/app/WearUtil$ActionInfo;->isWearAction:Z

    .line 45
    iput p2, p0, Lcom/google/android/wearable/app/WearUtil$ActionInfo;->actionIndex:I

    .line 46
    return-void
.end method


# virtual methods
.method public getActionIndex()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/android/wearable/app/WearUtil$ActionInfo;->actionIndex:I

    return v0
.end method

.method public isWearAction()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/wearable/app/WearUtil$ActionInfo;->isWearAction:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    const-string v0, "ActionInfo{isWearAction=%s, actionIndex=%d}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/wearable/app/WearUtil$ActionInfo;->isWearAction:Z

    .line 59
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/wearable/app/WearUtil$ActionInfo;->actionIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 58
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
