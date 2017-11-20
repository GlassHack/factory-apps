.class final Lcom/google/android/location/reporting/config/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Landroid/content/SharedPreferences;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/location/reporting/config/l;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;I)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/android/location/reporting/config/l;->b:Landroid/content/SharedPreferences;

    .line 88
    iput p2, p0, Lcom/google/android/location/reporting/config/l;->c:I

    .line 89
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/location/reporting/config/l;
    .locals 3

    .prologue
    .line 97
    invoke-static {p0}, Lcom/google/android/location/reporting/b/a;->a(Landroid/content/Context;)V

    .line 98
    const-string v0, "ULR_PERSISTENT_PREFS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    invoke-static {p0}, Lcom/google/android/gms/common/util/e;->c(Landroid/content/Context;)I

    move-result v1

    .line 101
    new-instance v2, Lcom/google/android/location/reporting/config/l;

    invoke-direct {v2, v0, v1}, Lcom/google/android/location/reporting/config/l;-><init>(Landroid/content/SharedPreferences;I)V

    return-object v2
.end method

.method private static c(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inactivationMillis_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deviceTag_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Landroid/accounts/Account;)Ljava/lang/Long;
    .locals 6

    .prologue
    .line 193
    sget-object v1, Lcom/google/android/location/reporting/config/l;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_0
    invoke-static {p1}, Lcom/google/android/location/reporting/config/l;->c(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v2, p0, Lcom/google/android/location/reporting/config/l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/reporting/config/l;->b:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Lcom/google/android/location/reporting/config/ReportingConfig;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 163
    iget-object v1, p0, Lcom/google/android/location/reporting/config/l;->b:Landroid/content/SharedPreferences;

    const-string v2, "reportingConfig"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    if-nez v1, :cond_0

    .line 175
    :goto_0
    return-object v0

    .line 167
    :cond_0
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 168
    new-instance v2, Lcom/google/android/location/reporting/a/g;

    invoke-direct {v2}, Lcom/google/android/location/reporting/a/g;-><init>()V

    .line 170
    :try_start_0
    array-length v3, v1

    invoke-static {v2, v1, v3}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;
    :try_end_0
    .catch Lcom/google/protobuf/nano/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    invoke-static {v2}, Lcom/google/android/location/reporting/config/ReportingConfig;->a(Lcom/google/android/location/reporting/a/g;)Lcom/google/android/location/reporting/config/ReportingConfig;

    move-result-object v0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    const-string v2, "GCoreUlr"

    invoke-static {v2, v1}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Landroid/accounts/Account;)Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-static {p1}, Lcom/google/android/location/reporting/config/l;->d(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/google/android/location/reporting/config/l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/google/android/location/reporting/config/l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/reporting/config/l;->b:Landroid/content/SharedPreferences;

    const-string v2, "deviceTag"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/google/android/location/reporting/config/l;->b:Landroid/content/SharedPreferences;

    const-string v2, "deviceTag"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 132
    iget-object v2, p0, Lcom/google/android/location/reporting/config/l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 133
    const-string v3, "deviceTag"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-static {}, Lcom/google/android/location/reporting/b/j;->j()V

    .line 137
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/location/reporting/config/ReportingConfig;J)Ljava/util/List;
    .locals 12

    .prologue
    .line 203
    invoke-virtual {p1}, Lcom/google/android/location/reporting/config/ReportingConfig;->a()Lcom/google/android/location/reporting/a/g;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v0

    .line 205
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/google/android/location/reporting/config/l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "reportingConfig"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 213
    sget-object v3, Lcom/google/android/location/reporting/config/l;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 215
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/location/reporting/config/ReportingConfig;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/config/AccountConfig;

    .line 216
    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/AccountConfig;->b()Landroid/accounts/Account;

    move-result-object v5

    .line 217
    invoke-static {v5}, Lcom/google/android/location/reporting/config/l;->c(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v6

    .line 218
    invoke-direct {p0, v5}, Lcom/google/android/location/reporting/config/l;->e(Landroid/accounts/Account;)Ljava/lang/Long;

    move-result-object v5

    .line 219
    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/AccountConfig;->x()Z

    move-result v7

    if-nez v7, :cond_1

    .line 221
    if-nez v5, :cond_0

    .line 223
    invoke-interface {v1, v6, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 226
    :cond_1
    if-eqz v5, :cond_2

    .line 229
    :try_start_1
    new-instance v7, Lcom/google/android/location/reporting/config/c;

    sget-object v8, Lcom/google/android/location/reporting/config/d;->a:Lcom/google/android/location/reporting/config/d;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v7, v0, v8, v10, v11}, Lcom/google/android/location/reporting/config/c;-><init>(Lcom/google/android/location/reporting/config/AccountConfig;Lcom/google/android/location/reporting/config/d;J)V

    .line 231
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v5, Lcom/google/android/location/reporting/config/c;

    sget-object v7, Lcom/google/android/location/reporting/config/d;->b:Lcom/google/android/location/reporting/config/d;

    invoke-direct {v5, v0, v7, p2, p3}, Lcom/google/android/location/reporting/config/c;-><init>(Lcom/google/android/location/reporting/config/AccountConfig;Lcom/google/android/location/reporting/config/d;J)V

    .line 236
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_2
    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 245
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 246
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    return-object v2
.end method

.method public final a(Landroid/accounts/Account;I)V
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/google/android/location/reporting/config/l;->a(Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Assigning new device tag to account "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with existing device tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deviceTag_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/google/android/location/reporting/config/l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 154
    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 156
    return-void
.end method

.method final a(Landroid/accounts/Account;Landroid/accounts/Account;)V
    .locals 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/location/reporting/config/l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/google/android/location/reporting/config/l;->b:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/google/android/location/reporting/config/l;->d(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/location/reporting/config/l;->d(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/location/reporting/b/l;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 293
    iget-object v1, p0, Lcom/google/android/location/reporting/config/l;->b:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/google/android/location/reporting/config/l;->c(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/location/reporting/config/l;->c(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/location/reporting/b/l;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 295
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 296
    iget-object v0, p0, Lcom/google/android/location/reporting/config/l;->b:Landroid/content/SharedPreferences;

    invoke-static {v0, p1}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/SharedPreferences;Landroid/accounts/Account;)V

    .line 297
    return-void
.end method

.method public final a(Ljava/io/PrintWriter;)V
    .locals 2

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "old config: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/l;->a()Lcom/google/android/location/reporting/config/ReportingConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 280
    const-string v0, "GCoreUlr"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Saving GCM registration ID for app version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/location/reporting/config/l;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/reporting/config/l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 284
    const-string v1, "gcm-registration-id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 285
    const-string v1, "gcm-app-version"

    iget v2, p0, Lcom/google/android/location/reporting/config/l;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 287
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x4

    .line 258
    iget-object v1, p0, Lcom/google/android/location/reporting/config/l;->b:Landroid/content/SharedPreferences;

    const-string v2, "gcm-registration-id"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    const-string v1, "GCoreUlr"

    invoke-static {v1, v5}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const-string v1, "GCoreUlr"

    const-string v2, "No GCM registration ID"

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_0
    :goto_0
    return-object v0

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/google/android/location/reporting/config/l;->b:Landroid/content/SharedPreferences;

    const-string v3, "gcm-app-version"

    const/high16 v4, -0x80000000

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 266
    iget v3, p0, Lcom/google/android/location/reporting/config/l;->c:I

    if-eq v2, v3, :cond_2

    .line 267
    const-string v1, "GCoreUlr"

    invoke-static {v1, v5}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    const-string v1, "GCoreUlr"

    const-string v2, "App version registered for GCM changed"

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 272
    goto :goto_0
.end method

.method final b(Landroid/accounts/Account;)Z
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/location/reporting/config/l;->b:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/google/android/location/reporting/config/l;->d(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/reporting/config/l;->b:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/google/android/location/reporting/config/l;->c(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
