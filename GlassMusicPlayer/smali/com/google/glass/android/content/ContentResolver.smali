.class public interface abstract Lcom/google/glass/android/content/ContentResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
.end method

.method public abstract acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;
.end method

.method public abstract acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
.end method

.method public abstract acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;
.end method

.method public abstract applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
.end method

.method public abstract bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
.end method

.method public abstract call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getType(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public abstract insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public abstract notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
.end method

.method public abstract notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
.end method

.method public abstract openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
.end method

.method public abstract openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
.end method

.method public abstract openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
.end method

.method public abstract openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;
.end method

.method public abstract openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
.end method

.method public abstract query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
.end method

.method public abstract registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
.end method

.method public abstract unregisterContentObserver(Landroid/database/ContentObserver;)V
.end method

.method public abstract update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
