.class public final Lcom/google/android/gms/common/audience/widgets/AudienceView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/audience/widgets/AudienceView$a;,
        Lcom/google/android/gms/common/audience/widgets/AudienceView$RemoveAudienceMemberCallback;,
        Lcom/google/android/gms/common/audience/widgets/AudienceView$EditAudienceCallback;
    }
.end annotation


# static fields
.field public static final EDIT_MODE_CLICK_TO_EDIT:I = 0x3

.field public static final EDIT_MODE_CLICK_TO_REMOVE:I = 0x2

.field public static final EDIT_MODE_READ_ONLY:I = 0x1

.field protected static final PACKAGE_IMPLEMENTATION_CLASS_NAME:Ljava/lang/String; = "com.google.android.gms.plus.audience.widgets.AudienceViewImpl$DynamiteHost"

.field private static xY:Landroid/content/Context;


# instance fields
.field private final xZ:Landroid/content/Context;

.field private final ya:Lcom/google/android/gms/internal/ba;

.field private yb:Lcom/google/android/gms/common/audience/widgets/AudienceView$EditAudienceCallback;

.field private yc:Lcom/google/android/gms/common/audience/widgets/AudienceView$RemoveAudienceMemberCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/common/audience/widgets/AudienceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/audience/widgets/AudienceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->u(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ba;

    iput-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->ya:Lcom/google/android/gms/internal/ba;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->xZ:Landroid/content/Context;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->ya:Lcom/google/android/gms/internal/ba;

    invoke-virtual {p0}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/c;->i(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->xZ:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/c;->i(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/audience/widgets/AudienceView$1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/common/audience/widgets/AudienceView$1;-><init>(Lcom/google/android/gms/common/audience/widgets/AudienceView;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ba;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/bb;)V

    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->ya:Lcom/google/android/gms/internal/ba;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ba;->getView()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->d(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/common/audience/widgets/AudienceView;)Lcom/google/android/gms/common/audience/widgets/AudienceView$RemoveAudienceMemberCallback;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->yc:Lcom/google/android/gms/common/audience/widgets/AudienceView$RemoveAudienceMemberCallback;

    return-object v0
.end method

.method private a(ILcom/google/android/gms/common/audience/widgets/AudienceView$EditAudienceCallback;Lcom/google/android/gms/common/audience/widgets/AudienceView$RemoveAudienceMemberCallback;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->yb:Lcom/google/android/gms/common/audience/widgets/AudienceView$EditAudienceCallback;

    iput-object p3, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->yc:Lcom/google/android/gms/common/audience/widgets/AudienceView$RemoveAudienceMemberCallback;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->ya:Lcom/google/android/gms/internal/ba;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ba;->aM(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/common/audience/widgets/AudienceView;)Lcom/google/android/gms/common/audience/widgets/AudienceView$EditAudienceCallback;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->yb:Lcom/google/android/gms/common/audience/widgets/AudienceView$EditAudienceCallback;

    return-object v0
.end method

.method private static u(Landroid/content/Context;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/gms/internal/ba;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->xY:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->xY:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->xY:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->xY:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :try_start_0
    const-string v1, "com.google.android.gms.plus.audience.widgets.AudienceViewImpl$DynamiteHost"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Lcom/google/android/gms/internal/ba$a;->x(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ba;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/common/audience/widgets/AudienceView;->xY:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    if-eqz v0, :cond_1

    const-string v1, "AudienceView"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AudienceView"

    const-string v2, "Can\'t load com.google.android.gms.plus.audience.widgets.AudienceViewImpl$DynamiteHost"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Lcom/google/android/gms/common/audience/widgets/AudienceView$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/audience/widgets/AudienceView$a;-><init>(Lcom/google/android/gms/common/audience/widgets/AudienceView$1;)V

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "state":Landroid/os/Parcelable;
    const-string v0, "parent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->ya:Lcom/google/android/gms/internal/ba;

    const-string v1, "impl"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ba;->onRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "parent"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :try_start_0
    const-string v1, "impl"

    iget-object v2, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->ya:Lcom/google/android/gms/internal/ba;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ba;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setAudience(Lcom/google/android/gms/common/people/data/Audience;)V
    .locals 1
    .param p1, "audience"    # Lcom/google/android/gms/common/people/data/Audience;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->ya:Lcom/google/android/gms/internal/ba;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ba;->setAudience(Lcom/google/android/gms/common/people/data/Audience;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setModeClickToEdit(Lcom/google/android/gms/common/audience/widgets/AudienceView$EditAudienceCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/google/android/gms/common/audience/widgets/AudienceView$EditAudienceCallback;

    .prologue
    const/4 v1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/audience/widgets/AudienceView$EditAudienceCallback;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a(ILcom/google/android/gms/common/audience/widgets/AudienceView$EditAudienceCallback;Lcom/google/android/gms/common/audience/widgets/AudienceView$RemoveAudienceMemberCallback;)V

    return-void
.end method

.method public setModeClickToRemove(Lcom/google/android/gms/common/audience/widgets/AudienceView$RemoveAudienceMemberCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/google/android/gms/common/audience/widgets/AudienceView$RemoveAudienceMemberCallback;

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/audience/widgets/AudienceView$RemoveAudienceMemberCallback;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a(ILcom/google/android/gms/common/audience/widgets/AudienceView$EditAudienceCallback;Lcom/google/android/gms/common/audience/widgets/AudienceView$RemoveAudienceMemberCallback;)V

    return-void
.end method

.method public setModeReadonly()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a(ILcom/google/android/gms/common/audience/widgets/AudienceView$EditAudienceCallback;Lcom/google/android/gms/common/audience/widgets/AudienceView$RemoveAudienceMemberCallback;)V

    return-void
.end method

.method public setShowEmptyText(Z)V
    .locals 1
    .param p1, "showEmptyText"    # Z

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->ya:Lcom/google/android/gms/internal/ba;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ba;->setShowEmptyText(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
