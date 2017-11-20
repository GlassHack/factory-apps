.class Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView$ReadAloudModeStateChangeListener;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "ReadAloudModeSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadAloudModeStateChangeListener"
.end annotation


# instance fields
.field final enableState:Z

.field final synthetic this$0:Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;


# direct methods
.method public constructor <init>(Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;Z)V
    .locals 0
    .param p2, "enableState"    # Z

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView$ReadAloudModeStateChangeListener;->this$0:Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    .line 43
    iput-boolean p2, p0, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView$ReadAloudModeStateChangeListener;->enableState:Z

    .line 44
    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onDone()V
    .locals 14

    .prologue
    .line 48
    iget-object v11, p0, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView$ReadAloudModeStateChangeListener;->this$0:Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;

    invoke-virtual {v11}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 56
    .local v1, "context":Landroid/content/Context;
    iget-boolean v11, p0, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView$ReadAloudModeStateChangeListener;->enableState:Z

    if-eqz v11, :cond_5

    .line 57
    new-instance v9, Lcom/google/android/util/ArraySet;

    invoke-direct {v9}, Lcom/google/android/util/ArraySet;-><init>()V

    .line 58
    .local v9, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string v11, "accessibility"

    .line 59
    invoke-virtual {v1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 63
    .local v0, "a11yManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v8

    .line 64
    .local v8, "installedServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 98
    .end local v0    # "a11yManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v8    # "installedServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v9    # "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_0
    :goto_0
    return-void

    .line 68
    .restart local v0    # "a11yManager":Landroid/view/accessibility/AccessibilityManager;
    .restart local v8    # "installedServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .restart local v9    # "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 69
    .local v7, "installedServiceInfoCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_2

    .line 70
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 71
    .local v10, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .local v6, "installedService":Landroid/content/ComponentName;
    invoke-interface {v9, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 76
    .end local v6    # "installedService":Landroid/content/ComponentName;
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v3, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 78
    .local v2, "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v12, ":"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 82
    .end local v2    # "enabledService":Landroid/content/ComponentName;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 83
    .local v4, "enabledServicesBuilderLength":I
    if-lez v4, :cond_4

    .line 84
    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 87
    :cond_4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "enabled_accessibility_services"

    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 87
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    .end local v0    # "a11yManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v3    # "enabledServicesBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "enabledServicesBuilderLength":I
    .end local v5    # "i":I
    .end local v7    # "installedServiceInfoCount":I
    .end local v8    # "installedServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v9    # "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :goto_3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "accessibility_enabled"

    iget-boolean v11, p0, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView$ReadAloudModeStateChangeListener;->enableState:Z

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    .line 94
    :goto_4
    invoke-static {v12, v13, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    iget-object v11, p0, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView$ReadAloudModeStateChangeListener;->this$0:Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;

    invoke-static {v11}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;->access$000(Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;)V

    goto :goto_0

    .line 91
    :cond_5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "enabled_accessibility_services"

    const-string v13, ""

    .line 90
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    .line 95
    :cond_6
    const/4 v11, 0x0

    goto :goto_4
.end method
