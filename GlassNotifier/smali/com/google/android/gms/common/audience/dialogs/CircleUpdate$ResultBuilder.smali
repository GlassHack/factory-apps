.class public Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$ResultBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/audience/dialogs/CircleUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultBuilder"
.end annotation


# instance fields
.field private final Uk:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$ResultBuilder;->Uk:Landroid/content/Intent;

    return-void
.end method

.method public static getTargetCircle(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "result"    # Landroid/content/Intent;

    .prologue
    const-string v0, "EXTRA_TARGET_CIRCLE_ID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdatePerson(Landroid/content/Intent;)Lcom/google/android/gms/common/people/data/AudienceMember;
    .locals 1
    .param p0, "result"    # Landroid/content/Intent;

    .prologue
    const-string v0, "EXTRA_UPDATE_PERSON"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    return-object v0
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$ResultBuilder;->Uk:Landroid/content/Intent;

    return-object v0
.end method

.method public setTargetCircleId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$ResultBuilder;
    .locals 2
    .param p1, "targetCircleId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$ResultBuilder;->Uk:Landroid/content/Intent;

    const-string v1, "EXTRA_TARGET_CIRCLE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setUpdatePerson(Lcom/google/android/gms/common/people/data/AudienceMember;)Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$ResultBuilder;
    .locals 2
    .param p1, "updatePerson"    # Lcom/google/android/gms/common/people/data/AudienceMember;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$ResultBuilder;->Uk:Landroid/content/Intent;

    const-string v1, "EXTRA_UPDATE_PERSON"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method
