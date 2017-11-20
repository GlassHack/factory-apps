.class public Lcom/google/glass/maps/DisclaimerActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "SourceFile"


# static fields
.field private static final DISCLAIMER_PREFERENCES:Ljava/lang/String; = "disclaimer"

.field private static final EXTRA_LAUNCH_INTENT:Ljava/lang/String; = "launchIntent"

.field private static final EXTRA_SKIP_DISCLAIMER:Ljava/lang/String; = "skipDisclaimer"

.field private static final KEY_DISCLAIMER_SHOWN:Ljava/lang/String; = "shown"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private launchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/DisclaimerActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method

.method public static addSkipDisclaimerToIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 57
    const-string v0, "skipDisclaimer"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    return-object p0
.end method

.method private static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 111
    const-string v0, "disclaimer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static showDisclaimerIfNecessary(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 36
    const-string v1, "skipDisclaimer"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    sget-object v1, Lcom/google/glass/maps/DisclaimerActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Skipping disclaimer because we just showed it."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    invoke-static {p0}, Lcom/google/glass/maps/DisclaimerActivity;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "shown"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-static {p1}, Lcom/google/glass/maps/DisclaimerActivity;->addSkipDisclaimerToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/maps/DisclaimerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50
    const-string v1, "launchIntent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/google/glass/maps/DisclaimerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launchIntent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/google/glass/maps/DisclaimerActivity;->launchIntent:Landroid/content/Intent;

    .line 72
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/glass/maps/DisclaimerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$menu;->disclaimer_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lcom/google/glass/maps/DisclaimerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launchIntent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/google/glass/maps/DisclaimerActivity;->launchIntent:Landroid/content/Intent;

    .line 78
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/google/glass/maps/R$id;->continue_option:I

    if-ne v0, v1, :cond_0

    .line 102
    sget-object v0, Lcom/google/glass/maps/DisclaimerActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "User confirmed disclaimer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-static {p0}, Lcom/google/glass/maps/DisclaimerActivity;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shown"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/DisclaimerActivity;->launchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/DisclaimerActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/glass/maps/DisclaimerActivity;->finish()V

    .line 107
    return v3
.end method

.method public onResumeInternal()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1f4

    .line 82
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 84
    sget v0, Lcom/google/glass/maps/R$id;->continue_tip:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 87
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 91
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/google/glass/maps/R$layout;->disclaimer_activity:I

    return v0
.end method
