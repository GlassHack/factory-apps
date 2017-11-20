.class Lcom/google/android/gms/common/audience/widgets/AudienceView$a;
.super Lcom/google/android/gms/internal/ba$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/audience/widgets/AudienceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private ye:Lcom/google/android/gms/common/people/data/Audience;

.field private yf:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ba$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/audience/widgets/AudienceView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/audience/widgets/AudienceView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/bb;)V
    .locals 2

    new-instance v1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/c;->d(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView$a;->yf:Landroid/widget/TextView;

    return-void
.end method

.method public aM(I)V
    .locals 0

    return-void
.end method

.method public getView()Lcom/google/android/gms/dynamic/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView$a;->yf:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->i(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "audience"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/data/Audience;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/audience/widgets/AudienceView$a;->setAudience(Lcom/google/android/gms/common/people/data/Audience;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "audience"

    iget-object v2, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView$a;->ye:Lcom/google/android/gms/common/people/data/Audience;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public setAudience(Lcom/google/android/gms/common/people/data/Audience;)V
    .locals 5
    .param p1, "audience"    # Lcom/google/android/gms/common/people/data/Audience;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView$a;->ye:Lcom/google/android/gms/common/people/data/Audience;

    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView$a;->ye:Lcom/google/android/gms/common/people/data/Audience;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView$a;->yf:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/people/data/Audience;->getAudienceMemberList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView$a;->yf:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setShowEmptyText(Z)V
    .locals 0
    .param p1, "showEmptyText"    # Z

    .prologue
    return-void
.end method
