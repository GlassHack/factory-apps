.class public Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;
.super Landroid/app/Activity;
.source "HelpAndTipsActivity.java"


# static fields
.field private static final IMAGE_IDS:[I

.field public static final PREF_KEY_ALL_SLIDES_VIEWED:Ljava/lang/String; = "allSlidesViewed"

.field public static final PREF_KEY_SHOW_HELP_ON_STARTUP:Ljava/lang/String; = "showHelpOnStartUp"


# instance fields
.field private currentIndex:I

.field private dismissButton:Landroid/widget/Button;

.field private illustration:Landroid/widget/ImageView;

.field private nextButton:Landroid/widget/Button;

.field private previousButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/android/apps/lightcycle/R$drawable;->help_1:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/google/android/apps/lightcycle/R$drawable;->help_2:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/google/android/apps/lightcycle/R$drawable;->help_3:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/google/android/apps/lightcycle/R$drawable;->help_4:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/google/android/apps/lightcycle/R$drawable;->help_5:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/google/android/apps/lightcycle/R$drawable;->help_6:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/google/android/apps/lightcycle/R$drawable;->help_7:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/google/android/apps/lightcycle/R$drawable;->help_8:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->IMAGE_IDS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->currentIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->previous()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->next()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->dismiss()V

    return-void
.end method

.method private dismiss()V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->finish()V

    .line 98
    return-void
.end method

.method private next()V
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->currentIndex:I

    sget-object v1, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->IMAGE_IDS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 109
    iget v0, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->currentIndex:I

    .line 111
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->currentIndex:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->showIllustration(I)V

    .line 112
    return-void
.end method

.method private previous()V
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->currentIndex:I

    if-lez v0, :cond_0

    .line 102
    iget v0, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->currentIndex:I

    .line 104
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->currentIndex:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->showIllustration(I)V

    .line 105
    return-void
.end method

.method private setButtonEnabled(Landroid/widget/Button;Z)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "enabled"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setClickable(Z)V

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 124
    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 126
    :cond_0
    return-void

    .line 124
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method private showIllustration(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->illustration:Landroid/widget/ImageView;

    sget-object v3, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->IMAGE_IDS:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->previousButton:Landroid/widget/Button;

    iget v0, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->currentIndex:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->setButtonEnabled(Landroid/widget/Button;Z)V

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->nextButton:Landroid/widget/Button;

    iget v3, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->currentIndex:I

    sget-object v4, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->IMAGE_IDS:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->setButtonEnabled(Landroid/widget/Button;Z)V

    .line 118
    return-void

    :cond_0
    move v0, v2

    .line 116
    goto :goto_0

    :cond_1
    move v1, v2

    .line 117
    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Lcom/google/android/apps/lightcycle/R$layout;->helps_and_tips:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->setContentView(I)V

    .line 50
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/apps/lightcycle/util/UiUtil;->setDisplayHomeAsUpEnabled(Landroid/app/Activity;Z)V

    .line 52
    sget v0, Lcom/google/android/apps/lightcycle/R$id;->illustration:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->illustration:Landroid/widget/ImageView;

    .line 53
    sget v0, Lcom/google/android/apps/lightcycle/R$id;->previous:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->previousButton:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->previousButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity$1;-><init>(Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    sget v0, Lcom/google/android/apps/lightcycle/R$id;->next:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->nextButton:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity$2;-><init>(Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    sget v0, Lcom/google/android/apps/lightcycle/R$id;->dismiss:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->dismissButton:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->dismissButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity$3;-><init>(Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->showIllustration(I)V

    .line 76
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 89
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/HelpAndTipsActivity;->finish()V

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 81
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->HELP:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->trackPage(Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;)V

    .line 83
    return-void
.end method
