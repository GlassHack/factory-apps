.class final Lcom/google/android/gms/common/audience/widgets/a;
.super Lcom/google/android/gms/common/audience/b/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/audience/widgets/AudienceView;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/audience/widgets/AudienceView;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/gms/common/audience/widgets/a;->a:Lcom/google/android/gms/common/audience/widgets/AudienceView;

    invoke-direct {p0}, Lcom/google/android/gms/common/audience/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/a;->a:Lcom/google/android/gms/common/audience/widgets/AudienceView;

    invoke-static {v0}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->b(Lcom/google/android/gms/common/audience/widgets/AudienceView;)Lcom/google/android/gms/common/audience/widgets/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/audience/widgets/b;->d()V

    .line 98
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/people/data/AudienceMember;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/a;->a:Lcom/google/android/gms/common/audience/widgets/AudienceView;

    invoke-static {v0}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a(Lcom/google/android/gms/common/audience/widgets/AudienceView;)Lcom/google/android/gms/common/audience/widgets/d;

    .line 93
    return-void
.end method
