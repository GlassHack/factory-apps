.class public final Lcom/android/providers/media/RingtonePickerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;
.implements Ljava/lang/Runnable;


# static fields
.field private static sPlayingRingtone:Landroid/media/Ringtone;


# instance fields
.field private mClickedPos:I

.field private mCurrentRingtone:Landroid/media/Ringtone;

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mExistingUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field private mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mType:I

.field private mUriForDefaultItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 44
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 63
    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    .line 66
    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 69
    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    .line 72
    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 108
    new-instance v0, Lcom/android/providers/media/RingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/RingtonePickerActivity$1;-><init>(Lcom/android/providers/media/RingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/providers/media/RingtonePickerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/media/RingtonePickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/providers/media/RingtonePickerActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/media/RingtonePickerActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/RingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/RingtonePickerActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 2
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 236
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 237
    const v0, 0x7f050005

    invoke-direct {p0, p1, v0}, Lcom/android/providers/media/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    .line 242
    :goto_0
    return v0

    .line 238
    :cond_0
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 239
    const v0, 0x7f050006

    invoke-direct {p0, p1, v0}, Lcom/android/providers/media/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    goto :goto_0

    .line 242
    :cond_1
    const v0, 0x7f050004

    invoke-direct {p0, p1, v0}, Lcom/android/providers/media/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    goto :goto_0
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 246
    const v0, 0x1040436

    invoke-direct {p0, p1, v0}, Lcom/android/providers/media/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addStaticItem(Landroid/widget/ListView;I)I
    .locals 4
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "textResId"    # I

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x109009e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 229
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 230
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 231
    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    .line 232
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private getListPosition(I)I
    .locals 1
    .param p1, "ringtoneManagerPos"    # I

    .prologue
    .line 381
    if-gez p1, :cond_0

    .line 383
    .end local p1    # "ringtoneManagerPos":I
    :goto_0
    return p1

    .restart local p1    # "ringtoneManagerPos":I
    :cond_0
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1
    .param p1, "listPos"    # I

    .prologue
    .line 375
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private playRingtone(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "delayMs"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 299
    iput p1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 300
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    return-void
.end method

.method private saveAnyPlayingRingtone()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    sput-object v0, Lcom/android/providers/media/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    sput-object v0, Lcom/android/providers/media/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    goto :goto_0
.end method

.method private stopAnyPlayingRingtone()V
    .locals 1

    .prologue
    .line 360
    sget-object v0, Lcom/android/providers/media/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/providers/media/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    sget-object v0, Lcom/android/providers/media/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 363
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/media/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    .line 365
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 372
    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 253
    if-ne p2, v5, :cond_0

    const/4 v0, 0x1

    .line 256
    .local v0, "positiveResult":Z
    :goto_0
    iget-object v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 258
    if-eqz v0, :cond_3

    .line 259
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 260
    .local v1, "resultIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 262
    .local v2, "uri":Landroid/net/Uri;
    iget v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v3, v4, :cond_1

    .line 264
    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 272
    :goto_1
    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v5, v1}, Lcom/android/providers/media/RingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 278
    .end local v1    # "resultIntent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/providers/media/RingtonePickerActivity$2;

    invoke-direct {v4, p0}, Lcom/android/providers/media/RingtonePickerActivity$2;-><init>(Lcom/android/providers/media/RingtonePickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 284
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->finish()V

    .line 285
    return-void

    .end local v0    # "positiveResult":Z
    :cond_0
    move v0, v3

    .line 253
    goto :goto_0

    .line 265
    .restart local v0    # "positiveResult":Z
    .restart local v1    # "resultIntent":Landroid/content/Intent;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_1
    iget v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    if-ne v3, v4, :cond_2

    .line 267
    const/4 v2, 0x0

    goto :goto_1

    .line 269
    :cond_2
    iget-object v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 275
    .end local v1    # "resultIntent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/providers/media/RingtonePickerActivity;->setResult(I)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 126
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    .line 130
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 136
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mHasDefaultItem:Z

    .line 137
    const-string v2, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 138
    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 139
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 142
    :cond_0
    if-eqz p1, :cond_1

    .line 143
    const-string v2, "clicked_pos"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    .line 146
    :cond_1
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mHasSilentItem:Z

    .line 149
    new-instance v2, Landroid/media/RingtoneManager;

    invoke-direct {v2, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 152
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mType:I

    .line 153
    iget v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mType:I

    if-eq v2, v3, :cond_2

    .line 154
    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mType:I

    invoke-virtual {v2, v3}, Landroid/media/RingtoneManager;->setType(I)V

    .line 157
    :cond_2
    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 160
    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/providers/media/RingtonePickerActivity;->setVolumeControlStream(I)V

    .line 163
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 166
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 167
    .local v1, "p":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 168
    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 169
    const-string v2, "title"

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 170
    iput-boolean v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 171
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 172
    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/android/providers/media/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 173
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 174
    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/android/providers/media/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 175
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 176
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    .line 178
    const-string v2, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 179
    iget-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-nez v2, :cond_3

    .line 180
    const v2, 0x1040437

    invoke-virtual {p0, v2}, Lcom/android/providers/media/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 183
    :cond_3
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->setupAlert()V

    .line 184
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 291
    const/16 v0, 0x12c

    invoke-direct {p0, p3, v0}, Lcom/android/providers/media/RingtonePickerActivity;->playRingtone(II)V

    .line 292
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 295
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 346
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 349
    :cond_0
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 2
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v1, -0x1

    .line 193
    iget-boolean v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0, p1}, Lcom/android/providers/media/RingtonePickerActivity;->addDefaultRingtoneItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 196
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    .line 201
    :cond_0
    iget-boolean v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v0, :cond_1

    .line 202
    invoke-direct {p0, p1}, Lcom/android/providers/media/RingtonePickerActivity;->addSilentItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    .line 205
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 206
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    .line 210
    :cond_1
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    if-ne v0, v1, :cond_2

    .line 211
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/providers/media/RingtonePickerActivity;->getListPosition(I)I

    move-result v0

    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 216
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 188
    const-string v0, "clicked_pos"

    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 335
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 336
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->saveAnyPlayingRingtone()V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 305
    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    if-ne v1, v2, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v1, v2, :cond_4

    .line 311
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_2

    .line 312
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 318
    :cond_2
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_3

    .line 319
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 322
    .local v0, "ringtone":Landroid/media/Ringtone;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    .line 328
    :goto_1
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 324
    .end local v0    # "ringtone":Landroid/media/Ringtone;
    :cond_4
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v2}, Lcom/android/providers/media/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v0

    .line 325
    .restart local v0    # "ringtone":Landroid/media/Ringtone;
    iput-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    goto :goto_1
.end method
