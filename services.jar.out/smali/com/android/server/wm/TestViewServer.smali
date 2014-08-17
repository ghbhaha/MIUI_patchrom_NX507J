.class Lcom/android/server/wm/TestViewServer;
.super Ljava/lang/Object;
.source "TestViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EtTestViewServer"

.field public static final VIEW_SERVER_DEFAULT_PORT:I = 0x22b8

.field private static remoteCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPort:I

.field private mServer:Ljava/net/ServerSocket;

.field private mThread:Ljava/lang/Thread;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/TestViewServer;->remoteCommands:Ljava/util/List;

    .line 46
    sget-object v0, Lcom/android/server/wm/TestViewServer;->remoteCommands:Ljava/util/List;

    const-string v1, "getViewInfos"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/android/server/wm/TestViewServer;->remoteCommands:Ljava/util/List;

    const-string v1, "getSpecViewInfo"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/android/server/wm/TestViewServer;->remoteCommands:Ljava/util/List;

    const-string v1, "getViewCenter"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/android/server/wm/TestViewServer;->remoteCommands:Ljava/util/List;

    const-string v1, "getTextCenter"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/android/server/wm/TestViewServer;->remoteCommands:Ljava/util/List;

    const-string v1, "searchSpecText"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/android/server/wm/TestViewServer;->remoteCommands:Ljava/util/List;

    const-string v1, "takeScreenshot"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/android/server/wm/TestViewServer;->remoteCommands:Ljava/util/List;

    const-string v1, "dump2"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/android/server/wm/TestViewServer;->remoteCommands:Ljava/util/List;

    const-string v1, "getstr"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/android/server/wm/TestViewServer;->remoteCommands:Ljava/util/List;

    const-string v1, "hideSoftInput"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/android/server/wm/TestViewServer;->remoteCommands:Ljava/util/List;

    const-string v1, "getCoordFromDesc"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/android/server/wm/TestViewServer;->remoteCommands:Ljava/util/List;

    const-string v1, "getDescFromCoord"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .parameter "windowManager"

    .prologue
    .line 83
    const/16 v0, 0x22b8

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TestViewServer;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    .line 84
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .locals 0
    .parameter "windowManager"
    .parameter "port"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/server/wm/TestViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 98
    iput p2, p0, Lcom/android/server/wm/TestViewServer;->mPort:I

    .line 99
    return-void
.end method

.method private static writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 7
    .parameter "client"
    .parameter "value"

    .prologue
    .line 237
    const/4 v2, 0x0

    .line 240
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 241
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 242
    .end local v2           #out:Ljava/io/BufferedWriter;
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 243
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 245
    const/4 v4, 0x1

    .line 249
    .local v4, result:Z
    if-eqz v3, :cond_2

    .line 251
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 257
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return v4

    .line 252
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 253
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    move-object v2, v3

    .line 254
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_0

    .line 246
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #result:Z
    :catch_1
    move-exception v1

    .line 247
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    const/4 v4, 0x0

    .line 249
    .restart local v4       #result:Z
    if-eqz v2, :cond_0

    .line 251
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 252
    :catch_2
    move-exception v1

    .line 253
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .line 254
    goto :goto_0

    .line 249
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #result:Z
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_1

    .line 251
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 254
    :cond_1
    :goto_3
    throw v5

    .line 252
    :catch_3
    move-exception v1

    .line 253
    .restart local v1       #e:Ljava/io/IOException;
    goto :goto_3

    .line 249
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 246
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v4       #result:Z
    :cond_2
    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_0
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/wm/TestViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TestViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 171
    iget-object v8, p0, Lcom/android/server/wm/TestViewServer;->mServer:Ljava/net/ServerSocket;

    .line 173
    .local v8, server:Ljava/net/ServerSocket;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wm/TestViewServer;->mThread:Ljava/lang/Thread;

    if-ne v9, v10, :cond_6

    .line 175
    const/4 v0, 0x0

    .line 180
    .local v0, client:Ljava/net/Socket;
    :try_start_0
    invoke-virtual {v8}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 181
    const/4 v3, 0x0

    .line 184
    .local v3, in:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v10, 0x400

    invoke-direct {v4, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .end local v3           #in:Ljava/io/BufferedReader;
    .local v4, in:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, request:Ljava/lang/String;
    const-string v9, "EtTestViewServer"

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 193
    .local v5, index:I
    const/4 v9, -0x1

    if-ne v5, v9, :cond_3

    .line 195
    move-object v1, v7

    .line 196
    .local v1, command:Ljava/lang/String;
    const-string v6, ""

    .line 206
    .local v6, parameters:Ljava/lang/String;
    :goto_1
    sget-object v9, Lcom/android/server/wm/TestViewServer;->remoteCommands:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 208
    iget-object v9, p0, Lcom/android/server/wm/TestViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v0, v1, v6}, Lcom/android/server/wm/WindowManagerService;->testViewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 213
    :cond_1
    if-eqz v4, :cond_2

    .line 215
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 224
    :cond_2
    if-eqz v0, :cond_0

    .line 226
    :try_start_4
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v2

    .line 228
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v1           #command:Ljava/lang/String;
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #parameters:Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v7, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 201
    .restart local v1       #command:Ljava/lang/String;
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v6

    .restart local v6       #parameters:Ljava/lang/String;
    goto :goto_1

    .line 213
    .end local v1           #command:Ljava/lang/String;
    .end local v4           #in:Ljava/io/BufferedReader;
    .end local v5           #index:I
    .end local v6           #parameters:Ljava/lang/String;
    .end local v7           #request:Ljava/lang/String;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v3, :cond_4

    .line 215
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_4
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 219
    .end local v3           #in:Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 221
    .local v2, e:Ljava/lang/Exception;
    :try_start_7
    const-string v9, "EtTestViewServer"

    const-string v10, "Connection error: "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 224
    if-eqz v0, :cond_0

    .line 226
    :try_start_8
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 227
    :catch_2
    move-exception v2

    .line 228
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 224
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v9

    if-eqz v0, :cond_5

    .line 226
    :try_start_9
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 229
    :cond_5
    :goto_3
    throw v9

    .line 227
    :catch_3
    move-exception v2

    .line 228
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 233
    .end local v0           #client:Ljava/net/Socket;
    .end local v2           #e:Ljava/io/IOException;
    :cond_6
    return-void

    .line 213
    .restart local v0       #client:Ljava/net/Socket;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method start()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 113
    iget-object v1, p0, Lcom/android/server/wm/TestViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    .line 118
    :cond_0
    new-instance v1, Ljava/net/ServerSocket;

    iget v2, p0, Lcom/android/server/wm/TestViewServer;->mPort:I

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v1, p0, Lcom/android/server/wm/TestViewServer;->mServer:Ljava/net/ServerSocket;

    .line 119
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote View Server [port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/TestViewServer;->mPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/TestViewServer;->mThread:Ljava/lang/Thread;

    .line 120
    iget-object v1, p0, Lcom/android/server/wm/TestViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method stop()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v1, p0, Lcom/android/server/wm/TestViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/server/wm/TestViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 141
    iput-object v2, p0, Lcom/android/server/wm/TestViewServer;->mThread:Ljava/lang/Thread;

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TestViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 144
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TestViewServer;->mServer:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    const/4 v1, 0x1

    .line 150
    :goto_0
    return v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/io/IOException;
    const-string v1, "EtTestViewServer"

    const-string v2, "Could not close the view server"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
