.class public Lcom/android/systemui/statusbar/policy/LocationController;
.super Landroid/content/BroadcastReceiver;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
    }
.end annotation


# static fields
.field private static final mHighPowerRequestAppOpArray:[I


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAreActiveLocationRequests:Z

.field private mContext:Landroid/content/Context;

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/LocationController;->mHighPowerRequestAppOpArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    .line 78
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1, p0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 83
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 87
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.location.MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    new-instance v1, Lcom/android/systemui/statusbar/policy/LocationController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/LocationController$1;-><init>(Lcom/android/systemui/statusbar/policy/LocationController;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->updateActiveLocationRequests()V

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->refreshViews()V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/LocationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/LocationController;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->locationSettingsChanged()V

    return-void
.end method

.method private areActiveHighPowerLocationRequests()Z
    .locals 10

    .prologue
    .line 164
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v9, Lcom/android/systemui/statusbar/policy/LocationController;->mHighPowerRequestAppOpArray:[I

    invoke-virtual {v8, v9}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v7

    .line 167
    .local v7, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v7, :cond_2

    .line 168
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 169
    .local v1, "numPackages":I
    const/4 v5, 0x0

    .local v5, "packageInd":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 170
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 171
    .local v6, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    .line 172
    .local v2, "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v2, :cond_1

    .line 173
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 174
    .local v0, "numOps":I
    const/4 v4, 0x0

    .local v4, "opInd":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 175
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    .line 178
    .local v3, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_0

    .line 179
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 180
    const/4 v8, 0x1

    .line 188
    .end local v0    # "numOps":I
    .end local v1    # "numPackages":I
    .end local v2    # "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v3    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v4    # "opInd":I
    .end local v5    # "packageInd":I
    .end local v6    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    :goto_2
    return v8

    .line 174
    .restart local v0    # "numOps":I
    .restart local v1    # "numPackages":I
    .restart local v2    # "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v3    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .restart local v4    # "opInd":I
    .restart local v5    # "packageInd":I
    .restart local v6    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 169
    .end local v0    # "numOps":I
    .end local v3    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v4    # "opInd":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "numPackages":I
    .end local v2    # "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v5    # "packageInd":I
    .end local v6    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private isUserLocationRestricted(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 155
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_share_location"

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method private locationSettingsChanged()V
    .locals 4

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->isLocationEnabled()Z

    move-result v2

    .line 212
    .local v2, "isEnabled":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;

    .line 213
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;->onLocationSettingsChanged(Z)V

    goto :goto_0

    .line 215
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
    :cond_0
    return-void
.end method

.method private refreshViews()V
    .locals 6

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAreActiveLocationRequests:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "location"

    const v2, 0x7f020091

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0095

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateActiveLocationRequests()V
    .locals 2

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAreActiveLocationRequests:Z

    .line 204
    .local v0, "hadActiveLocationRequests":Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->areActiveHighPowerLocationRequests()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAreActiveLocationRequests:Z

    .line 205
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAreActiveLocationRequests:Z

    if-eq v1, v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->refreshViews()V

    .line 208
    :cond_0
    return-void
.end method


# virtual methods
.method public addSettingsChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public isLocationEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 145
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "location_mode"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 147
    .local v0, "mode":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 219
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->updateActiveLocationRequests()V

    .line 223
    :cond_0
    return-void
.end method

.method public setLocationEnabled(Z)Z
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 124
    .local v1, "currentUserId":I
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/LocationController;->isUserLocationRestricted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    :goto_0
    return v2

    .line 127
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 130
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    const/4 v2, 0x3

    .line 134
    .local v2, "mode":I
    :cond_1
    const-string v3, "location_mode"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v2

    goto :goto_0
.end method
