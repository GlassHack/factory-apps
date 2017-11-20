.class public Lcom/google/android/gsf/login/Compat;
.super Ljava/lang/Object;
.source "Compat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/Compat$ContactsContract;
    }
.end annotation


# static fields
.field private static final sActionBarSetDisplayShowHomeEnabled:Ljava/lang/reflect/Method;

.field private static final sActionBarSetDisplayShowTitleEnabled:Ljava/lang/reflect/Method;

.field private static final sActionBarSetTitle:Ljava/lang/reflect/Method;

.field private static final sApplyMethod:Ljava/lang/reflect/Method;

.field private static final sContextGetActionBar:Ljava/lang/reflect/Method;

.field private static final sEventLog:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sEventLogWriteEvent:Ljava/lang/reflect/Method;

.field private static final sMenuItemSetShowAsAction:Ljava/lang/reflect/Method;

.field private static final sViewConfigurationHasPermanentMenuKey:Ljava/lang/reflect/Method;

.field private static final sViewSetSystemUiVisibility:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 59
    const-class v0, Landroid/content/SharedPreferences$Editor;

    const-string v1, "apply"

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/Compat;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sApplyMethod:Ljava/lang/reflect/Method;

    .line 62
    const-class v0, Landroid/app/Activity;

    const-string v1, "getActionBar"

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/Compat;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sContextGetActionBar:Ljava/lang/reflect/Method;

    .line 65
    const-class v0, Landroid/view/ViewConfiguration;

    const-string v1, "hasPermanentMenuKey"

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/Compat;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sViewConfigurationHasPermanentMenuKey:Ljava/lang/reflect/Method;

    .line 68
    const-class v0, Landroid/view/MenuItem;

    const-string v1, "setShowAsAction"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/login/Compat;->findMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sMenuItemSetShowAsAction:Ljava/lang/reflect/Method;

    .line 71
    const-string v0, "android.app.ActionBar"

    const-string v1, "setTitle"

    const-class v2, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/login/Compat;->findMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sActionBarSetTitle:Ljava/lang/reflect/Method;

    .line 74
    const-string v0, "android.app.ActionBar"

    const-string v1, "setDisplayShowHomeEnabled"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/login/Compat;->findMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sActionBarSetDisplayShowHomeEnabled:Ljava/lang/reflect/Method;

    .line 78
    const-string v0, "android.app.ActionBar"

    const-string v1, "setDisplayShowTitleEnabled"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/login/Compat;->findMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sActionBarSetDisplayShowTitleEnabled:Ljava/lang/reflect/Method;

    .line 82
    const-class v0, Landroid/view/View;

    const-string v1, "setSystemUiVisibility"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/login/Compat;->findMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sViewSetSystemUiVisibility:Ljava/lang/reflect/Method;

    .line 86
    const-string v0, "android.util.EventLog"

    invoke-static {v0}, Lcom/google/android/gsf/login/Compat;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sEventLog:Ljava/lang/Class;

    .line 87
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sEventLog:Ljava/lang/Class;

    const-string v1, "writeEvent"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/login/Compat;->findMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sEventLogWriteEvent:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static actionBarSetDisplayShowHomeEnabled(Landroid/app/Activity;Z)V
    .locals 5
    .param p0, "c"    # Landroid/app/Activity;
    .param p1, "id"    # Z

    .prologue
    .line 237
    sget-object v1, Lcom/google/android/gsf/login/Compat;->sContextGetActionBar:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 241
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/login/Compat;->sContextGetActionBar:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 242
    .local v0, "ab":Ljava/lang/Object;
    sget-object v1, Lcom/google/android/gsf/login/Compat;->sActionBarSetDisplayShowHomeEnabled:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    .end local v0    # "ab":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static actionBarSetDisplayShowTitleEnabled(Landroid/app/Activity;Z)V
    .locals 5
    .param p0, "c"    # Landroid/app/Activity;
    .param p1, "id"    # Z

    .prologue
    .line 249
    sget-object v1, Lcom/google/android/gsf/login/Compat;->sContextGetActionBar:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/login/Compat;->sContextGetActionBar:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 254
    .local v0, "ab":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 255
    sget-object v1, Lcom/google/android/gsf/login/Compat;->sActionBarSetDisplayShowTitleEnabled:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    .end local v0    # "ab":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 120
    if-nez p0, :cond_0

    .line 127
    :goto_0
    return-object v1

    .line 123
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "unused":Ljava/lang/NoSuchMethodException;
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static findMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "param":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 132
    if-nez p0, :cond_0

    .line 139
    :goto_0
    return-object v1

    .line 135
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "unused":Ljava/lang/NoSuchMethodException;
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static findMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "param1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "param2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 148
    if-nez p0, :cond_0

    .line 155
    :goto_0
    return-object v1

    .line 151
    :cond_0
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {p0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "unused":Ljava/lang/NoSuchMethodException;
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static findMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p0, "cn"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 160
    .local p2, "param":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 161
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 169
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "unused":Ljava/lang/ClassNotFoundException;
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v1    # "unused":Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 165
    :catch_1
    move-exception v1

    .line 166
    .local v1, "unused":Ljava/lang/NoSuchMethodException;
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p0, "cn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 174
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 179
    :goto_0
    return-object v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "unused":Ljava/lang/ClassNotFoundException;
    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasActionBar()Z
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sContextGetActionBar:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
    .locals 4
    .param p0, "viewConfig"    # Landroid/view/ViewConfiguration;

    .prologue
    const/4 v2, 0x0

    .line 295
    sget-object v1, Lcom/google/android/gsf/login/Compat;->sViewConfigurationHasPermanentMenuKey:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 297
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/login/Compat;->sViewConfigurationHasPermanentMenuKey:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 302
    :goto_0
    return v1

    .line 298
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    move v1, v2

    .line 299
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    move v1, v2

    .line 302
    goto :goto_0
.end method

.method public static isWifiOnlyBuild()Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 285
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 286
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 287
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 288
    const-string v4, "wifi-only"

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ro.carrier"

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 290
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 289
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static menuItemSetShowAsAction(Landroid/view/MenuItem;I)V
    .locals 4
    .param p0, "mi"    # Landroid/view/MenuItem;
    .param p1, "param"    # I

    .prologue
    .line 263
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sMenuItemSetShowAsAction:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 267
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sMenuItemSetShowAsAction:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static viewSetSystemUiVisibility(Landroid/widget/FrameLayout;I)V
    .locals 4
    .param p0, "fl"    # Landroid/widget/FrameLayout;
    .param p1, "v"    # I

    .prologue
    .line 274
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sViewSetSystemUiVisibility:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 276
    :try_start_0
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sViewSetSystemUiVisibility:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    goto :goto_0
.end method
