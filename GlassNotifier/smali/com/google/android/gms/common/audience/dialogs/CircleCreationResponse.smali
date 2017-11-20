.class public Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;
.super Ljava/lang/Object;


# static fields
.field public static final STATUS_CODE_ERROR:I = 0x2

.field public static final STATUS_CODE_NOT_INTENDED:I = 0x3

.field public static final STATUS_CODE_SUCCESS:I = 0x1


# instance fields
.field private final Ug:Lcom/google/android/gms/common/people/data/AudienceMember;

.field private final Uh:Ljava/lang/String;

.field private final Ui:I

.field private final Uj:I


# direct methods
.method public constructor <init>(ILcom/google/android/gms/common/people/data/AudienceMember;ILjava/lang/String;)V
    .locals 0
    .param p1, "createCircleStatusCode"    # I
    .param p2, "circle"    # Lcom/google/android/gms/common/people/data/AudienceMember;
    .param p3, "addPersonStatusCode"    # I
    .param p4, "qualifiedId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Ui:I

    iput-object p2, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Ug:Lcom/google/android/gms/common/people/data/AudienceMember;

    iput p3, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Uj:I

    iput-object p4, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Uh:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->iE()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google.android.gms.plus.audience.EXTRA_CREATE_CIRCLE_STATUS_CODE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Ui:I

    const-string v0, "com.google.android.gms.plus.audience.EXTRA_CIRCLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    iput-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Ug:Lcom/google/android/gms/common/people/data/AudienceMember;

    const-string v0, "com.google.android.gms.plus.audience.EXTRA_ADD_PERSON_STATUS_CODE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Uj:I

    const-string v0, "com.google.android.gms.plus.audience.EXTRA_QUALIFIED_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Uh:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->iE()V

    return-void
.end method

.method private iE()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Ui:I

    const-string v1, "Invalid create circle status code."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->a(ILjava/lang/Object;)I

    iget v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Uj:I

    const-string v1, "Invalid add person status code."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->a(ILjava/lang/Object;)I

    iget v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Ui:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Ug:Lcom/google/android/gms/common/people/data/AudienceMember;

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getCircleId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Must provide a circle with circle id."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Ug:Lcom/google/android/gms/common/people/data/AudienceMember;

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Must provide a circle with display name."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Uj:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Uh:Ljava/lang/String;

    const-string v1, "Must provide qualified id."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public convertToIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.plus.audience.EXTRA_CREATE_CIRCLE_STATUS_CODE"

    iget v2, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Ui:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.plus.audience.EXTRA_CIRCLE"

    iget-object v2, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Ug:Lcom/google/android/gms/common/people/data/AudienceMember;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.plus.audience.EXTRA_ADD_PERSON_STATUS_CODE"

    iget v2, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Uj:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.plus.audience.EXTRA_QUALIFIED_ID"

    iget-object v2, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Uh:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public getAddPersonStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Uj:I

    return v0
.end method

.method public getCircle()Lcom/google/android/gms/common/people/data/AudienceMember;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Ug:Lcom/google/android/gms/common/people/data/AudienceMember;

    return-object v0
.end method

.method public getCreateCircleStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Ui:I

    return v0
.end method

.method public getQualifiedId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreationResponse;->Uh:Ljava/lang/String;

    return-object v0
.end method
