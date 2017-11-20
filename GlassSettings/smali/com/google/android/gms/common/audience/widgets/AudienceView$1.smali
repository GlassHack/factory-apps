.class Lcom/google/android/gms/common/audience/widgets/AudienceView$1;
.super Lcom/google/android/gms/internal/bb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/audience/widgets/AudienceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yd:Lcom/google/android/gms/common/audience/widgets/AudienceView;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/audience/widgets/AudienceView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView$1;->yd:Lcom/google/android/gms/common/audience/widgets/AudienceView;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bb$a;-><init>()V

    return-void
.end method


# virtual methods
.method public editAudience()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView$1;->yd:Lcom/google/android/gms/common/audience/widgets/AudienceView;

    invoke-static {v0}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->b(Lcom/google/android/gms/common/audience/widgets/AudienceView;)Lcom/google/android/gms/common/audience/widgets/AudienceView$EditAudienceCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/audience/widgets/AudienceView$EditAudienceCallback;->editAudience()V

    return-void
.end method

.method public removeAudienceMember(Lcom/google/android/gms/common/people/data/AudienceMember;)V
    .locals 1
    .param p1, "audienceMember"    # Lcom/google/android/gms/common/people/data/AudienceMember;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView$1;->yd:Lcom/google/android/gms/common/audience/widgets/AudienceView;

    invoke-static {v0}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a(Lcom/google/android/gms/common/audience/widgets/AudienceView;)Lcom/google/android/gms/common/audience/widgets/AudienceView$RemoveAudienceMemberCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/audience/widgets/AudienceView$RemoveAudienceMemberCallback;->removeAudienceMember(Lcom/google/android/gms/common/people/data/AudienceMember;)V

    return-void
.end method
