.class public final Lcom/google/android/gms/auth/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Method;

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/reflect/Method;

.field private static final f:Ljava/lang/reflect/Method;

.field private static final g:Ljava/lang/Class;

.field private static final h:Ljava/lang/reflect/Method;

.field private static final i:Ljava/lang/reflect/Method;

.field private static final j:Ljava/lang/reflect/Method;

.field private static final k:Ljava/lang/reflect/Method;

.field private static final l:Ljava/lang/Class;

.field private static final m:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 60
    const-class v0, Landroid/content/SharedPreferences$Editor;

    const-string v1, "apply"

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/a/b;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/a/b;->a:Ljava/lang/reflect/Method;

    .line 63
    const-class v0, Landroid/app/Activity;

    const-string v1, "getActionBar"

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/a/b;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/a/b;->b:Ljava/lang/reflect/Method;

    .line 66
    const-class v0, Landroid/view/ViewConfiguration;

    const-string v1, "hasPermanentMenuKey"

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/a/b;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/a/b;->c:Ljava/lang/reflect/Method;

    .line 69
    const-class v0, Landroid/view/MenuItem;

    const-string v1, "setShowAsAction"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/a/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/a/b;->d:Ljava/lang/reflect/Method;

    .line 72
    const-string v0, "android.app.ActionBar"

    const-string v1, "setTitle"

    const-class v2, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/a/b;->e:Ljava/lang/reflect/Method;

    .line 75
    const-string v0, "android.app.ActionBar"

    const-string v1, "setDisplayShowHomeEnabled"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/a/b;->f:Ljava/lang/reflect/Method;

    .line 79
    const-string v0, "android.net.TrafficStats"

    invoke-static {v0}, Lcom/google/android/gms/auth/a/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 81
    sput-object v0, Lcom/google/android/gms/auth/a/b;->g:Ljava/lang/Class;

    const-string v1, "setThreadStatsTag"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/a/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/a/b;->h:Ljava/lang/reflect/Method;

    .line 85
    sget-object v0, Lcom/google/android/gms/auth/a/b;->g:Ljava/lang/Class;

    const-string v1, "clearThreadStatsTag"

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/a/b;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/a/b;->i:Ljava/lang/reflect/Method;

    .line 88
    const-string v0, "android.app.ActionBar"

    const-string v1, "setDisplayShowTitleEnabled"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/a/b;->j:Ljava/lang/reflect/Method;

    .line 92
    const-class v0, Landroid/view/View;

    const-string v1, "setSystemUiVisibility"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/a/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/a/b;->k:Ljava/lang/reflect/Method;

    .line 96
    const-string v0, "android.util.EventLog"

    invoke-static {v0}, Lcom/google/android/gms/auth/a/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 97
    sput-object v0, Lcom/google/android/gms/auth/a/b;->l:Ljava/lang/Class;

    const-string v1, "writeEvent"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/auth/a/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/a/b;->m:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    .prologue
    .line 185
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    .line 187
    :catch_0
    move-exception v0

    const-string v0, "GLSUser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class not found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 130
    if-nez p0, :cond_0

    .line 137
    :goto_0
    return-object v0

    .line 133
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    const-string v1, "GLSUser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Method not found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 142
    if-nez p0, :cond_0

    .line 149
    :goto_0
    return-object v0

    .line 145
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    const-string v1, "GLSUser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Method not found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 155
    if-nez p0, :cond_0

    .line 162
    :goto_0
    return-object v0

    .line 158
    :cond_0
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    const-string v1, "GLSUser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Method not found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    .prologue
    .line 167
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 168
    if-nez p2, :cond_0

    .line 169
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    .line 171
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    const-string v0, "GLSUser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class not found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 177
    :catch_1
    move-exception v0

    const-string v0, "GLSUser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Method not found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 204
    sget-object v0, Lcom/google/android/gms/auth/a/b;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 206
    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/a/b;->i:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/google/android/gms/auth/a/b;->g:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(I)V
    .locals 5

    .prologue
    .line 194
    sget-object v0, Lcom/google/android/gms/auth/a/b;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 196
    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/a/b;->h:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/google/android/gms/auth/a/b;->g:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 215
    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/a/b;->m:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 216
    sget-object v0, Lcom/google/android/gms/auth/a/b;->m:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/google/android/gms/auth/a/b;->l:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 268
    sget-object v0, Lcom/google/android/gms/auth/a/b;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 272
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/a/b;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 273
    sget-object v1, Lcom/google/android/gms/auth/a/b;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;)V
    .locals 4

    .prologue
    .line 294
    sget-object v0, Lcom/google/android/gms/auth/a/b;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 298
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/a/b;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewConfiguration;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 326
    sget-object v0, Lcom/google/android/gms/auth/a/b;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 328
    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/a/b;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 333
    :goto_0
    return v0

    .line 330
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 333
    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 280
    sget-object v0, Lcom/google/android/gms/auth/a/b;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/a/b;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_0

    .line 286
    sget-object v1, Lcom/google/android/gms/auth/a/b;->j:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/google/android/gms/auth/a/b;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 316
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 317
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 318
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 319
    const-string v2, "wifi-only"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ro.carrier"

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 321
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
